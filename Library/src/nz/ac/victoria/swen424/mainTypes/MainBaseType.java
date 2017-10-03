package nz.ac.victoria.swen424.mainTypes;

import java.util.LinkedList;
import java.util.List;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.events.XMLEvent;

import nz.ac.victoria.swen424.XmlLayoutNode;

public abstract class MainBaseType extends XmlLayoutNode implements IMainType
{
	protected SimulationStatus _simStat;
	
	public MainBaseType(String name)
	{
		super(name);
	}
	
	abstract SimulationStatus Simulate(int time) throws Exception;
	
	public static void Simulate(int timeSteps, int noOfSteps, List<ElProducer> producers, List<ElConsumer> consumers, XMLEventWriter xmlWriter) throws Exception
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "simulation"));
		
		int time = 0;
		
		for (int i = 0; i < noOfSteps; i++)
		{
			Boolean result = MainBaseType.SimulateStep(time, producers, consumers);
			xmlWriter.add(eventFactory.createStartElement("", "", "step"));
			xmlWriter.add(eventFactory.createAttribute("number", Integer.toString(i+1)));
			xmlWriter.add(eventFactory.createAttribute("day", Integer.toString(time / 24)));
			xmlWriter.add(eventFactory.createAttribute("time", Integer.toString(time % 24)));
			xmlWriter.add(eventFactory.createAttribute("day", Boolean.toString(result)));
			
			MainBaseType.WriteSimulationStep(time, producers, consumers, xmlWriter);
			
			xmlWriter.add(eventFactory.createEndElement("", "", "step")); // </step>
			
			time += timeSteps;
		}
		
		xmlWriter.add(eventFactory.createEndElement("", "", "simulation")); // </simulation>

	}
	
	public static void WriteSimulationStep(int time, List<ElProducer> producers, List<ElConsumer> consumers, XMLEventWriter xmlWriter) throws Exception
	{
		for (ElConsumer consumer : consumers)
		{
			consumer.writeSimulationData(xmlWriter);
		}
	
		for (ElProducer producer : producers)
		{
			producer.writeSimulationData(xmlWriter);
		}
	}
	
	public static Boolean SimulateStep(int time, List<ElProducer> producers, List<ElConsumer> consumers) throws Exception
	{
		double elUsage = 0;
		
		for (ElConsumer consumer : consumers)
		{
			elUsage += consumer.Simulate(time).maxElectricity;
		}
		
		List<SimulationStatus> prodStatus = new LinkedList<>();
		
		for (ElProducer producer : producers)
		{
			prodStatus.add(producer.Simulate(time));
		}
		
		return false;
	}
}
