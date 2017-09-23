package nz.ac.victoria.swen424.weather;

import java.util.Map;
import java.util.HashMap;
import java.util.List;

public class WeatherValues
{
	private Map<Integer, Weather> _weather;
	
	public WeatherValues(boolean random)
	{
		_weather = new HashMap<>();
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
}
