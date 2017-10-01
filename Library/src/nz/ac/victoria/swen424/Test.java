package nz.ac.victoria.swen424;

import java.util.List;
import nz.ac.victoria.swen424.weather.WeatherValues;
import nz.ac.victoria.swen424.mainTypes.ElProducer;
import nz.ac.victoria.swen424.mainTypes.ElTransformer;
import nz.ac.victoria.swen424.mainTypes.ElConsumer;
import java.util.LinkedList;
import nz.ac.victoria.swen424.weather.Weather;
import nz.ac.victoria.swen424.weather.WeatherEnum;
import nz.ac.victoria.swen424.weather.WindSpeedEnum;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLEventWriter;
import java.io.FileOutputStream;
import javanet.staxutils.IndentingXMLEventWriter;
import javax.xml.stream.XMLEventFactory;

public class Test
{
	public static void main(String[] args)
	{
		Test t = new Test();
		try
		{
			t.writeXML();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	/*package*/ List<WeatherValues> _weather;
	/*package*/ List<ElProducer> _producers;
	/*package*/ List<ElTransformer> _transformers;
	/*package*/ List<ElConsumer> _consumers;


	public Test()
	{
		WeatherValues wv;
		_weather = new LinkedList<WeatherValues>();
		wv = new WeatherValues("Wellington", false);
		wv.AppendWeather(new Weather(WeatherEnum.Rain, WindSpeedEnum.Flat));
		wv.AppendWeather(new Weather(WeatherEnum.ClearSky, WindSpeedEnum.HurricaneForce));
		_weather.add(wv);
		wv = new WeatherValues("Auckland", true);
		wv.AppendWeather(new Weather(WeatherEnum.ClearSky, WindSpeedEnum.Flat));
		_weather.add(wv);
		
		_producers = new LinkedList<ElProducer>();
		_producers.add(new ElProducer("prod", 1, 50));
		
		_transformers = new LinkedList<ElTransformer>();
		_transformers.add(new ElTransformer("tran", 4, 4, 4, 1, 1));
		
		_consumers = new LinkedList<ElConsumer>();
		_consumers.add(new ElConsumer("con", 1, 20));
	}

	public void writeXML() throws Exception {
		XMLOutputFactory outputFactory = XMLOutputFactory.newInstance();
		XMLEventWriter xmlWriter = outputFactory.createXMLEventWriter(new FileOutputStream("C:/Data/output.xml"));
		xmlWriter = new IndentingXMLEventWriter(xmlWriter);
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartDocument());
		xmlWriter.add(eventFactory.createStartElement("", "", "powerGridSimulator"));
		
		writeLayoutXML(xmlWriter);
		
		simulateAndExport(xmlWriter);
		
		xmlWriter.add(eventFactory.createEndElement("", "", "powerGridSimulator"));
		    xmlWriter.add(eventFactory.createEndDocument());
		    xmlWriter.close();
		  }
		
	private void writeLayoutXML(XMLEventWriter xmlWriter) throws Exception
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		xmlWriter.add(eventFactory.createStartElement("", "", "modelDefinition"));
		
		// Export Producers 
		xmlWriter.add(eventFactory.createStartElement("", "", "weatherList"));
		for (WeatherValues weather : _weather)
		{
			weather.writeHeaderData(xmlWriter);
		}
		xmlWriter.add(eventFactory.createEndElement("", "", "weatherList"));
		
		// Export Producers 
		xmlWriter.add(eventFactory.createStartElement("", "", "producers"));
		for (ElProducer producer : _producers)
		{
			producer.writeHeaderData(xmlWriter);
		}
		xmlWriter.add(eventFactory.createEndElement("", "", "producers"));
		
		// TODO For all the types 
		
		xmlWriter.add(eventFactory.createEndElement("", "", "modelDefinition"));
	}
		
	private void simulateAndExport(XMLEventWriter xmlWriter) throws Exception
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		xmlWriter.add(eventFactory.createStartElement("", "", "simulation"));
		
		// TODO The fun stuff comes in here 
		
		xmlWriter.add(eventFactory.createEndElement("", "", "modelDefinition"));
	}
}
