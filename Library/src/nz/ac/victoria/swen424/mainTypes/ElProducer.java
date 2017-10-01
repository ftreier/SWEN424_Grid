package nz.ac.victoria.swen424.mainTypes;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import nz.ac.victoria.swen424.weather.Weather;
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
		int daytiem = time % 24;
		int day = (time - daytiem) / 24;
		
		switch (_productionType)
		{
		case Wind:
			return simulateWind(day);
		case Solar:
			
			break;

		default:
			break;
		}
		
		return null;
	}
	
	private SimulationStatus simulateWind(int day) throws Exception
	{
		SimulationStatus s = new SimulationStatus();
		s.type = this;
		
		Weather w = _weather.GetWeatherForDay(day);
		
		int windSpeed = w.getWindSpeed().WindSpeedValue();
		
		// Shutdown because of strong winds
		if(windSpeed > 11)
		{
			s.maxElectricity = 0;
		}
		else if (windSpeed == 10)
		{
			s.maxElectricity = _maxProduction / 3.0;
		}
		else if (windSpeed == 9)
		{
			s.maxElectricity = 2 * _maxProduction / 3.0;
		}
		else
		{
			s.maxElectricity = windSpeed * _maxProduction / 8.0;
		}
		
		s.minElectricity = s.maxElectricity;
		return s;
				
	}
}
