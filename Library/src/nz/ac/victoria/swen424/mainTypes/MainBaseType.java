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
	
	public static void Simulate(int timeSteps, int noOfSteps, List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers, XMLEventWriter xmlWriter) throws Exception
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "simulation"));
		
		int time = 0;
		
		for (int i = 0; i < noOfSteps; i++)
		{
			Boolean result = MainBaseType.SimulateStep(time, producers, consumers, transformers);
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
	
	public static Boolean SimulateStep(int time, List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers) throws Exception
	{
		double elUsage = 0;
		double possibleProduction = 0;
		
		// accumulate all the consumption
		for (ElConsumer consumer : consumers)
		{
			elUsage += consumer.Simulate(time).currentElectricity;
		}
		
		// add general 10% for loss (estimate)
		double lossAssumption = elUsage * 0.1;
		//elUsage += lossAssumption;

		// accumulate production capacity
		List<SimulationStatus> prodStatus = new LinkedList<>();
		for (ElProducer producer : producers)
		{
			SimulationStatus simStat = producer.Simulate(time);
			if (producer.canChange())
			{
				elUsage += simStat.minElectricity;
				possibleProduction += simStat.maxElectricity - simStat.minElectricity;
				prodStatus.add(simStat);
			}
			else
			{
				elUsage += simStat.currentElectricity;
			}
		}
		
		// Try and meet the exact consumption
		if (elUsage < 0 && possibleProduction > 0 && Math.abs(elUsage) <= possibleProduction)
		{
			double percentage = Math.abs(elUsage) / possibleProduction;
			for (SimulationStatus simStat : prodStatus)
			{
				double diff = (simStat.maxElectricity - simStat.minElectricity) * percentage;
				elUsage += diff;
				possibleProduction -= diff;
				simStat.currentElectricity += diff;
				if(simStat.currentElectricity > simStat.maxElectricity)
				{
					throw new Exception("To much energy porduction");
				}
			}
		}
		
		// remove remove loss assumption and replace with actual losses
		//elUsage -= lossAssumption;
		
		// Check Transformers and calculate loss
		
		
		return elUsage >= -0.1 && elUsage <= 0.1;
	}
}
