package nz.ac.victoria.swen424.weather;

import java.util.HashMap;
import java.util.Map;

public enum WeatherEnum {
	ClearSky(0),
	Overcast(1),
	Rain(2);
	
	private static Map<Integer, WeatherEnum> _map = new HashMap<Integer, WeatherEnum>();
	private int _value;
	
	static
	{
		for(WeatherEnum we : WeatherEnum.values())
		{
			_map.put(we._value, we);
		}
	}
	
	public static WeatherEnum valueOf(int i)
	{
		return _map.get(i);
	}
	
	private WeatherEnum(int i)
	{
		_value = i;
	}
	
	public int WeatherValue()
	{
		return _value;
	}
}
