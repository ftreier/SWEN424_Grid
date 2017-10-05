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
    System.out.println("");
    System.out.println("");

    ElProducer producer;
    _producers = new LinkedList<ElProducer>();
    producer = new ElProducer("prod", 1, 20, ProducitionMethodeType.Solar);
    _producers.add(producer);
    producer = new ElProducer("prod2", 1, 20, ProducitionMethodeType.Conventional);
    _producers.add(producer);

    _transformers = new LinkedList<ElTransformer>();
    _transformers.add(new ElTransformer("tran", 150, 20, 95, 4, 1));
    _transformers.add(new ElTransformer("tran2", 80, 20, 90, 4, 1));

    ElConsumer consumer;
    _consumers = new LinkedList<ElConsumer>();
    consumer = new ElConsumer("house", 10);
    _consumers.add(consumer);
    consumer = new ElConsumer("shool", 10);
    _consumers.add(consumer);

    for (ElConsumer consumer_ : _consumers) {
      consumer_.connectTransformer(_transformers.get(0));
    }

    ElGrid grid;
    _grids = new LinkedList<ElGrid>();
    grid = new ElGrid(200, 10, 98, 4, "Wellington");
    _grids.add(grid);
    grid = new ElGrid(200, 0, 95, 4, "Auckland");
    _grids.add(grid);
    System.out.println("");

    for (ElGrid grid_ : _grids) {
    	grid_.connectLeftTransformer(_transformers.get(0));
    	grid_.connectRightTransformer(_transformers.get(1));
    }

    for (ElProducer producer_ : _producers) {
      producer_.connectTransformer(_transformers.get(1));
    }
  }

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
