package nz.ac.victoria.swen424.weather;

public class Weather
{
	WindSpeedEnum _windSpeed;
	WeatherEnum _weather;
	
	//public Weather(String weather)
	//{
	//	_weather = WeatherEnum.valueOf(weather);
	//}
	
	public Weather(WeatherEnum weather, WindSpeedEnum windSpeed)
	{
		_weather = weather;
		_windSpeed = windSpeed;
	}
}
