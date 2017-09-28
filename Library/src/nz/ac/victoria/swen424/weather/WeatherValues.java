package nz.ac.victoria.swen424.weather;

import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import nz.ac.victoria.swen424.IXmlWriteLayoutData;

import java.util.HashMap;
import java.util.List;

public class WeatherValues implements IXmlWriteLayoutData
{
	private Map<Integer, Weather> _weather;
	private String _name;
	private boolean _isRandom;
	private UUID _guid;
	
	public WeatherValues(String name, boolean random)
	{
		_name = name;
		_weather = new HashMap<>();
		_isRandom = random;
		_guid = UUID.randomUUID();
		if(random)
		{
			Random rand = new Random();
			for(int i = 0; i < 50; i++)
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

		for (int i = 0; i < _weather.size(); i++)
		{
			_weather.get(i).writeHeaderData(xmlWriter, i);
		}
		
		xmlWriter.add(eventFactory.createEndElement("", "", "weather"));
	}
}
