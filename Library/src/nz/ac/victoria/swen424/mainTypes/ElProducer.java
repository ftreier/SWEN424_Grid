package nz.ac.victoria.swen424.mainTypes;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import nz.ac.victoria.swen424.weather.WeatherValues;

public class ElProducer extends MainBaseType
{
	private int _minProduction;
	private int _maxProduction;
	private ElTransformer _connect;
	private ProducitionMethodeType _productionType;
	private WeatherValues _weather;
	

	public ElProducer(String name, int minProduction, int maxProduction, ProducitionMethodeType prodType)
	{
		super(name);
		_minProduction = minProduction;
		_maxProduction = maxProduction;
		_productionType = prodType;
		// TODO: Real reference
		_weather = new WeatherValues("test", true);
	}
	
	public void connectTransformer(ElTransformer connect){
		if(connect.increaseUsage(_maxProduction, this) == true){
			if(connect.getLeftNet() == 1 || connect.getRightNet() == 1){
				if(_connect == null){ _connect = connect; System.out.println("Producer " + _name + " connected to transformer"); }
				else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 1");}
			}
			else{ System.out.println("Could not connect transformer due to a difference in voltage levels"); }
		}
	}

	@Override
	public String getData()
	{
		// TODO return useful data
		return _name;
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "producer"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("minProduction", Integer.toString(_minProduction)));
		xmlWriter.add(eventFactory.createAttribute("maxProduction", Integer.toString(_maxProduction)));
		xmlWriter.add(eventFactory.createAttribute("productionMethode", _productionType.toString()));
		
		// Write connection
		xmlWriter.add(eventFactory.createStartElement("", "", "connectedTo"));
		xmlWriter.add(eventFactory.createAttribute("transformerId", _connect.GetGuid().toString()));
		xmlWriter.add(eventFactory.createAttribute("transformerName", _connect.GetName()));
		xmlWriter.add(eventFactory.createEndElement("", "", "connectedTo")); // </connectedTo>
		
		xmlWriter.add(eventFactory.createEndElement("", "", "producer")); // </producer>
	}

	@Override
	SimulationStatus Simulate(int time) throws Exception
	{
		int daytime = time % 24;
		int day = (time - daytime) / 24;
		
		switch (_productionType)
		{
		case Wind:
			return simulateWind(day);
		case Solar:
			return simulateSolar(day, daytime);
		case Conventional:
			SimulationStatus s = new SimulationStatus();
			s.type = this;
			s.maxElectricity = _maxProduction;
			s.minElectricity = _minProduction;
		default:
			throw new Exception("Unexpected power generation type found.");
		}

	}
	
	private SimulationStatus simulateWind(int day) throws Exception
	{
		SimulationStatus s = new SimulationStatus();
		s.type = this;
		
		int windSpeed = _weather.GetWeatherForDay(day).getWindSpeed().WindSpeedValue();
		
		// Shutdown because of strong winds, no production
		if(windSpeed >= 10)
		{
			s.maxElectricity = 0;
		}
		// Optimal region, maximum production
		else if (windSpeed >= 7)
		{
			s.maxElectricity = _maxProduction / 3.0;
		}
		// Linear approximation for low wind production
		else
		{
			s.maxElectricity = windSpeed * _maxProduction / 6.0;
		}
		
		// Electricity production of wind turbines can not be reduced
		s.minElectricity = s.maxElectricity;
		return s;		
	}
	
	private SimulationStatus simulateSolar(int day, int time) throws Exception
	{
		SimulationStatus s = new SimulationStatus();
		s.type = this;
		
		// Only producing energy from 6am to 6pm
		if(time < 6 || time > 18)
		{
			s.maxElectricity = 0;
		}
		else
		{
			switch(_weather.GetWeatherForDay(day).getWeather())
			{
			case ClearSky:
				// Maximum production
				s.maxElectricity = _maxProduction;
				break;
			case Overcast:
				// Producing about 20% of max capacity
				s.maxElectricity = _maxProduction * 0.2;
				break;
			case Rain:
				// No production at all
				s.maxElectricity = 0;
				break;
			default:
				throw new Exception("Unexpected Weaterh type found.");
			}
			
			// reduce production due to non optimal angle (midday normally has the best angle)
			s.maxElectricity = s.maxElectricity * (1 - Math.abs(time - 12) / 12);
		}
		
		// Solar panels can not be reduced in production
		s.minElectricity = s.maxElectricity;
		return s;
	}

	@Override
	public void writeSimulationData(XMLEventWriter xmlWriter) throws XMLStreamException {
		// TODO Auto-generated method stub
		
	}
}
