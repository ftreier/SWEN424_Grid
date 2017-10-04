package nz.ac.victoria.swen424.weather;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import nz.ac.victoria.swen424.XmlLayoutNode;

public class WeatherValues extends XmlLayoutNode
{
	private static final int _numberOfRandomDays = 20;
	private Map<Integer, Weather> _weather;
	private boolean _isRandom;
	
	public WeatherValues(String name, boolean random)
	{
		super(name);
		_weather = new HashMap<>();
		_isRandom = random;
		if(random)
		{
			Random rand = new Random();
			for(int i = 0; i < _numberOfRandomDays; i++)
			{
				AppendWeather(new Weather(WeatherEnum.valueOf(rand.nextInt(3)), WindSpeedEnum.valueOf(rand.nextInt(13))));
			}
		}
	}
	
	public void AppendWeather(Weather w)
	{
		int index = _weather.size();
		if(_weather.containsKey(index))
		{
			System.out.println("Replacing object");
			_weather.replace(index, w);
		}
		else
		{
			_weather.put(index, w);
		}
	}
	
	public Weather GetWeatherForDay(int day) throws Exception
	{
		if (!_weather.containsKey(day))
		{
			throw new Exception("nix gut");
		}
		
		return _weather.get(day);
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "weather"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("isRandom", Boolean.toString(_isRandom)));

		for (int i = 0; i < _weather.size(); i++)
		{
			_weather.get(i).writeHeaderData(xmlWriter, i);
		}
		
		xmlWriter.add(eventFactory.createEndElement("", "", "weather"));
	}

	@Override
	public void writeSimulationData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		// No data to write
	}
}
