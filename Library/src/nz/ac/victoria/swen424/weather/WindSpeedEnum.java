package nz.ac.victoria.swen424.weather;

import java.util.HashMap;
import java.util.Map;

public enum WindSpeedEnum
{
	Flat(0),
	LightAir(1),
	LightBreeze(2),
	GentleBreeze(3),
	ModerateBreeze(4),
	FreshBreeze(5),
	StrongBreeze(6),
	ModerateGale(7),
	FrshGale(8),
	StrongGale(9),
	Storm(10),
	ViolentStorm(11),
	HurricaneForce(12);
	
	private int _windSpeedValue;
	private static Map<Integer, WindSpeedEnum> _map = new HashMap<Integer, WindSpeedEnum>();
	
	static
	{
		for (WindSpeedEnum wse: WindSpeedEnum.values())
		{
			_map.put(wse.WindSpeedValue(), wse);
		}
	}
	
	public static WindSpeedEnum valueOf(int windSpeedValue)
	{
		return _map.get(windSpeedValue);
	}
	
	private WindSpeedEnum(int windSpeedValue)
	{
		_windSpeedValue = windSpeedValue;
	}
	
	public int WindSpeedValue()
	{
		return _windSpeedValue;
	}
}
