package nz.ac.victoria.swen424;

import java.util.List;
import nz.ac.victoria.swen424.weather.WeatherValues;
import nz.ac.victoria.swen424.UsageProfile;
import nz.ac.victoria.swen424.mainTypes.ElProducer;
import nz.ac.victoria.swen424.mainTypes.ElTransformer;
import nz.ac.victoria.swen424.mainTypes.ElConsumer;
import nz.ac.victoria.swen424.mainTypes.ElGrid;
import java.util.LinkedList;
import nz.ac.victoria.swen424.weather.Weather;
import nz.ac.victoria.swen424.weather.WeatherEnum;
import nz.ac.victoria.swen424.weather.WindSpeedEnum;
import nz.ac.victoria.swen424.mainTypes.ProducitionMethodeType;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLEventWriter;
import java.io.FileOutputStream;
import javanet.staxutils.IndentingXMLEventWriter;
import javax.xml.stream.XMLEventFactory;
import nz.ac.victoria.swen424.mainTypes.MainBaseType;

public class Test {
  /*package*/ List<WeatherValues> _weather;
  /*package*/ List<UsageProfile> _usageProfile;
  /*package*/ List<ElProducer> _producers;
  /*package*/ List<ElTransformer> _transformers;
  /*package*/ List<ElConsumer> _consumers;
  /*package*/ List<ElGrid> _grids;

  public Test() {
	    WeatherValues wv;
	    _weather = new LinkedList<WeatherValues>();
	    wv = new WeatherValues("Wellington", false);
	    wv.AppendWeather(new Weather(WeatherEnum.Rain, WindSpeedEnum.Flat));
	    wv.AppendWeather(new Weather(WeatherEnum.ClearSky, WindSpeedEnum.HurricaneForce));
	    _weather.add(wv);
	    wv = new WeatherValues("Auckland", true);
	    wv.AppendWeather(new Weather(WeatherEnum.ClearSky, WindSpeedEnum.Flat));
	    _weather.add(wv);

	    _usageProfile = new LinkedList<UsageProfile>();

	    _transformers = new LinkedList<ElTransformer>();
	    _transformers.add(new ElTransformer("Central", 3000, 0, 95, 0, 0));
	    _transformers.add(new ElTransformer("Norht", 3000, 0, 98, 0, 0));
	    _transformers.add(new ElTransformer("East", 1000, 0, 90, 0, 0));
	    _transformers.add(new ElTransformer("Soutn", 2000, 0, 97, 0, 0));
	    _transformers.add(new ElTransformer("West", 1200, 0, 93, 0, 0));

	    ElProducer producer;
	    _producers = new LinkedList<ElProducer>();
	    producer = new ElProducer("NSolar", 0, 1000, ProducitionMethodeType.Solar);
	    producer.connectTransformer(_transformers.get(1));
	    _producers.add(producer);
	    producer = new ElProducer("NWind", 0, 100, ProducitionMethodeType.Wind);
	    producer.connectTransformer(_transformers.get(1));
	    _producers.add(producer);
	    producer = new ElProducer("CWind", 0, 100, ProducitionMethodeType.Wind);
	    producer.connectTransformer(_transformers.get(0));
	    _producers.add(producer);
	    producer = new ElProducer("CConv", 100, 800, ProducitionMethodeType.Conventional);
	    producer.connectTransformer(_transformers.get(0));
	    _producers.add(producer);
	    producer = new ElProducer("CSolar", 0, 50, ProducitionMethodeType.Solar);
	    producer.connectTransformer(_transformers.get(0));
	    _producers.add(producer);
	    producer = new ElProducer("SWind", 0, 1000, ProducitionMethodeType.Wind);
	    producer.connectTransformer(_transformers.get(3));
	    _producers.add(producer);
	    producer = new ElProducer("SSolar", 0, 80, ProducitionMethodeType.Solar);
	    producer.connectTransformer(_transformers.get(3));
	    _producers.add(producer);
	    producer = new ElProducer("SConv", 100, 800, ProducitionMethodeType.Conventional);
	    producer.connectTransformer(_transformers.get(3));
	    _producers.add(producer);
	    producer = new ElProducer("EConv", 300, 700, ProducitionMethodeType.Conventional);
	    producer.connectTransformer(_transformers.get(2));
	    _producers.add(producer);
	    producer = new ElProducer("WConv", 10, 20, ProducitionMethodeType.Conventional);
	    producer.connectTransformer(_transformers.get(4));
	    _producers.add(producer);
	    producer = new ElProducer("WWind", 0, 500, ProducitionMethodeType.Wind);
	    producer.connectTransformer(_transformers.get(2));
	    _producers.add(producer);

	    ElConsumer consumer;
	    _consumers = new LinkedList<ElConsumer>();
	    consumer = new ElConsumer("CHouses", 200);
	    consumer.connectTransformer(_transformers.get(0));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("CBuisness", 200);
	    consumer.connectTransformer(_transformers.get(0));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("CIndustry", 200);
	    consumer.connectTransformer(_transformers.get(0));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("NHouses", 200);
	    consumer.connectTransformer(_transformers.get(1));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("NBuisness", 300);
	    consumer.connectTransformer(_transformers.get(1));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("NIndustry", 1000);
	    consumer.connectTransformer(_transformers.get(1));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("EHouses", 400);
	    consumer.connectTransformer(_transformers.get(2));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("EBuisness", 100);
	    consumer.connectTransformer(_transformers.get(2));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("EIndustry", 20);
	    consumer.connectTransformer(_transformers.get(2));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("SHouses", 20);
	    consumer.connectTransformer(_transformers.get(3));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("SBuisness", 100);
	    consumer.connectTransformer(_transformers.get(3));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("SIndustry", 200);
	    consumer.connectTransformer(_transformers.get(3));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("WHouses", 300);
	    consumer.connectTransformer(_transformers.get(4));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("WBuisness", 150);
	    consumer.connectTransformer(_transformers.get(4));
	    _consumers.add(consumer);
	    consumer = new ElConsumer("WIndustry", 100);
	    consumer.connectTransformer(_transformers.get(4));
	    _consumers.add(consumer);

	    ElGrid grid;
	    _grids = new LinkedList<ElGrid>();
	    _grids.add(new ElGrid(1200, 10, 98, 4, "T1", 5));
	    _grids.add(new ElGrid(500, 0, 95, 4, "T2", 2));
	    _grids.add(new ElGrid(700, 0, 99, 4, "T3", 2));
	    _grids.add(new ElGrid(1000, 0, 97, 4, "T4", 1));
	    _grids.add(new ElGrid(700, 0, 95, 4, "T5", 500));
	    _grids.add(new ElGrid(1000, 0, 95, 4, "T6", 500));
	    System.out.println("");

    	_grids.get(0).connectLeftTransformer(_transformers.get(0));
    	_grids.get(0).connectRightTransformer(_transformers.get(1));
    	_grids.get(1).connectLeftTransformer(_transformers.get(0));
    	_grids.get(1).connectRightTransformer(_transformers.get(1));
    	_grids.get(2).connectLeftTransformer(_transformers.get(1));
    	_grids.get(2).connectRightTransformer(_transformers.get(3));
    	_grids.get(3).connectLeftTransformer(_transformers.get(0));
    	_grids.get(3).connectRightTransformer(_transformers.get(3));
    	_grids.get(4).connectLeftTransformer(_transformers.get(0));
    	_grids.get(4).connectRightTransformer(_transformers.get(2));
    	_grids.get(5).connectLeftTransformer(_transformers.get(0));
    	_grids.get(5).connectRightTransformer(_transformers.get(4));
	  }

//  public Test() {
//    WeatherValues wv;
//    _weather = new LinkedList<WeatherValues>();
//    wv = new WeatherValues("Wellington", false);
//    wv.AppendWeather(new Weather(WeatherEnum.Rain, WindSpeedEnum.Flat));
//    wv.AppendWeather(new Weather(WeatherEnum.ClearSky, WindSpeedEnum.HurricaneForce));
//    _weather.add(wv);
//    wv = new WeatherValues("Auckland", true);
//    wv.AppendWeather(new Weather(WeatherEnum.ClearSky, WindSpeedEnum.Flat));
//    _weather.add(wv);
//
//    _usageProfile = new LinkedList<UsageProfile>();
//    System.out.println("");
//    System.out.println("");
//
//    ElProducer producer;
//    _producers = new LinkedList<ElProducer>();
//    producer = new ElProducer("prod", 1, 20, ProducitionMethodeType.Solar);
//    _producers.add(producer);
//    producer = new ElProducer("prod2", 1, 20, ProducitionMethodeType.Conventional);
//    _producers.add(producer);
//
//    _transformers = new LinkedList<ElTransformer>();
//    _transformers.add(new ElTransformer("tran", 150, 20, 95, 4, 1));
//    _transformers.add(new ElTransformer("tran2", 80, 20, 90, 4, 1));
//
//    ElConsumer consumer;
//    _consumers = new LinkedList<ElConsumer>();
//    consumer = new ElConsumer("house", 10);
//    _consumers.add(consumer);
//    consumer = new ElConsumer("shool", 10);
//    _consumers.add(consumer);
//
//    for (ElConsumer consumer_ : _consumers) {
//      consumer_.connectTransformer(_transformers.get(0));
//    }
//
//    ElGrid grid;
//    _grids = new LinkedList<ElGrid>();
//    grid = new ElGrid(200, 10, 98, 4, "Wellington", 0);
//    _grids.add(grid);
//    grid = new ElGrid(200, 0, 95, 4, "Auckland", 0);
//    _grids.add(grid);
//    System.out.println("");
//
//    for (ElGrid grid_ : _grids) {
//    	grid_.connectLeftTransformer(_transformers.get(0));
//    	grid_.connectRightTransformer(_transformers.get(1));
//    }
//
//    for (ElProducer producer_ : _producers) {
//      producer_.connectTransformer(_transformers.get(1));
//    }
//  }
//
  public void writeXML() throws Exception {
    XMLOutputFactory outputFactory = XMLOutputFactory.newInstance();
    XMLEventWriter xmlWriter = outputFactory.createXMLEventWriter(new FileOutputStream("C:/Data/output.xml"));
    xmlWriter = new IndentingXMLEventWriter(xmlWriter);
    XMLEventFactory eventFactory = XMLEventFactory.newInstance();

    xmlWriter.add(eventFactory.createStartDocument());
    xmlWriter.add(eventFactory.createStartElement("", "", "powerGridSimulator"));

    writeLayoutXML(xmlWriter);

    MainBaseType.Simulate(1, 24, _producers, _consumers, _transformers, _grids, xmlWriter);

    xmlWriter.add(eventFactory.createEndElement("", "", "powerGridSimulator"));
    xmlWriter.add(eventFactory.createEndDocument());
    xmlWriter.close();
  }

  private void writeLayoutXML(XMLEventWriter xmlWriter) throws Exception {
    XMLEventFactory eventFactory = XMLEventFactory.newInstance();
    xmlWriter.add(eventFactory.createStartElement("", "", "modelDefinition"));

    // Export Weather 
    for (WeatherValues weather : _weather) {
      weather.writeHeaderData(xmlWriter);
    }

    // Export Usage Profiles 
    for (UsageProfile usageProfile : _usageProfile) {
      usageProfile.writeHeaderData(xmlWriter);
    }

    // Export Producers 
    for (ElProducer producer : _producers) {
      producer.writeHeaderData(xmlWriter);
    }

    for (ElGrid grid : _grids) {
        grid.writeHeaderData(xmlWriter);
    }
    for (ElTransformer transformer : _transformers) {
        transformer.writeHeaderData(xmlWriter);
    }
// TODO For all the types 

    xmlWriter.add(eventFactory.createEndElement("", "", "modelDefinition"));
  }

  public static void main(String[] args) throws Exception {
    Test simulator = new Test();
    simulator.writeXML();
  }
}
