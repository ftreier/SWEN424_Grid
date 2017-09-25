package nz.ac.victoria.swen424.weather;

public class Weather
{
	WindSpeed _windSpeed;
	WeatherEnum _weather;
	
	public Weather(String weather)
	{
		_weather = WeatherEnum.valueOf(weather);
	}
	
	public Weather(WeatherEnum weather)
	{
		_weather = weather;
		//_windSpeed = WindSpeed.valueOf(windSpeed);
	}
}
