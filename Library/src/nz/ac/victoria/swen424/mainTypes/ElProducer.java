package nz.ac.victoria.swen424.mainTypes;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import nz.ac.victoria.swen424.weather.WeatherValues;

public class ElProducer extends MainBaseType
{
	private int _minProduction;
	private int _maxProduction;
	private String _connectName;
	private ElTransformer _connect;
	private String _weatherName;
	private ProducitionMethodeType _productionType;
	private WeatherValues _weather;
	

	public ElProducer(String name, int minProduction, int maxProduction, ProducitionMethodeType prodType, String connectName, String weatherName)
	{
		super(name);
		_minProduction = minProduction;
		_maxProduction = maxProduction;
		_productionType = prodType;
		_connectName = connectName;
		_weatherName = weatherName;
		// TODO: Real reference
		//_weather = new WeatherValues("test", true);
	}
	
	public void connectTransformer(ElTransformer connect){
		_connect = connect;
		connect.addLeftConnection(this);
//		if(connect.increaseUsage(_maxProduction, this) == true){
//			if(connect.getLeftNet() == 1 || connect.getRightNet() == 1){
//				if(_connect == null){ _connect = connect; System.out.println("Producer " + _name + " connected to transformer"); }
//				else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 1");}
//			}
//			else{ System.out.println("Could not connect transformer due to a difference in voltage levels"); }
//		}
	}
	
	public void connectWeather(WeatherValues weather){
		_weather = weather;
	}
	
	public boolean canChange() 
	{
		return _productionType == ProducitionMethodeType.Conventional; 
	}
	
	public String getTransName(){
		return _connectName;
	}
	
	public String getWeatherName(){
		return _weatherName;
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
			_simStat = simulateWind(day);
			break;
		case Solar:
			_simStat = simulateSolar(day, daytime);
			break;
		case Conventional:
			_simStat = new SimulationStatus();
			_simStat.type = this;
			_simStat.maxElectricity = _maxProduction;
			_simStat.minElectricity = _minProduction;
			_simStat.currentElectricity = _minProduction;
			break;
		default:
			throw new Exception("Unexpected power generation type found.");
		}
		
		return _simStat;
	}
	
	private SimulationStatus simulateWind(int day) throws Exception
	{
		SimulationStatus s = new SimulationStatus();
		s.type = this;
		s.maxElectricity = _maxProduction;
		s.minElectricity = 0;

		int windSpeed = _weather.GetWeatherForDay(day).getWindSpeed().WindSpeedValue();
		
		// Shutdown because of strong winds, no production
		if(windSpeed >= 10)
		{
			s.currentElectricity = 0;
		}
		// Optimal region, maximum production
		else if (windSpeed >= 7)
		{
			s.currentElectricity = _maxProduction / 3.0;
		}
		// Linear approximation for low wind production
		else
		{
			s.currentElectricity = windSpeed * _maxProduction / 6.0;
		}
		
		return s;		
	}
	
	private SimulationStatus simulateSolar(int day, int time) throws Exception
	{
		SimulationStatus s = new SimulationStatus();
		s.type = this;
		s.maxElectricity = _maxProduction;
		s.minElectricity = 0;
		
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
				s.currentElectricity = _maxProduction;
				break;
			case Overcast:
				// Producing about 20% of max capacity
				s.currentElectricity = _maxProduction * 0.2;
				break;
			case Rain:
				// No production at all
				s.currentElectricity = 0;
				break;
			default:
				throw new Exception("Unexpected Weaterh type found.");
			}
			
			// reduce production due to non optimal angle (midday normally has the best angle)
			s.maxElectricity = s.maxElectricity * (1 - Math.abs(time - 12) / 12);
		}
		
		return s;
	}

	@Override
	public void writeSimulationData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "producer"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("isOk", Boolean.toString(_simStat.isOk)));
		xmlWriter.add(eventFactory.createAttribute("production", Double.toString(_simStat.currentElectricity)));
		xmlWriter.add(eventFactory.createAttribute("maxProduction", Double.toString(_maxProduction)));
		if(_productionType == ProducitionMethodeType.Conventional)
		{
			xmlWriter.add(eventFactory.createAttribute("minProduction", Double.toString(_minProduction)));
			//double percentage = (_simStat.currentElectricity - _simStat.minElectricity) / (_simStat.maxElectricity - _simStat.minElectricity) * 100;
			xmlWriter.add(eventFactory.createAttribute("used", Double.toString(_simStat.getUsage())));
		}
		xmlWriter.add(eventFactory.createEndElement("", "", "producer")); // </producer>
	}
	
	public boolean updateProduction(double diff)
	{
		_simStat.currentElectricity += diff;
		if(_connect._simStat != null)
		{
			_connect._simStat.currentElectricity += diff;
		}
		
		if(_simStat.currentElectricity > _maxProduction || _simStat.currentElectricity < _minProduction)
		{
			_simStat.isOk = false;
		}
		else
		{
			_simStat.isOk = false;			
		}
		
		return _simStat.isOk;
	}

	public double getMaxProduction()
	{
		return _maxProduction;
	}
}