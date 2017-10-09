package nz.ac.victoria.swen424.weather;

import java.util.Random;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class Weather
{
	WindSpeedEnum _windSpeed;
	WeatherEnum _weather;
	
	public Weather(WeatherEnum weather, WindSpeedEnum windSpeed)
	{
		_weather = weather;
		_windSpeed = windSpeed;
	}
	
	/**
	 * Creates a random weather/wind combination.
	 */
	public Weather()
	{
		Random rand = new Random();
		
		_weather = WeatherEnum.valueOf(rand.nextInt(3));
		_windSpeed = WindSpeedEnum.valueOf(rand.nextInt(13));
	}

	protected void writeHeaderData(XMLEventWriter xmlWriter, int i) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "value"));
		xmlWriter.add(eventFactory.createAttribute("day", Integer.toString(i)));
		xmlWriter.add(eventFactory.createAttribute("weather", _weather.toString()));
		xmlWriter.add(eventFactory.createAttribute("windSpeed", _windSpeed.toString()));		
		xmlWriter.add(eventFactory.createEndElement("", "", "value"));
	}
	
	public WindSpeedEnum getWindSpeed()
	{
		return _windSpeed;
	}
	
	public WeatherEnum getWeather()
	{
		return _weather;
	}
}
