package nz.ac.victoria.swen424.mainTypes;

import java.util.LinkedList;
import java.util.List;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.events.XMLEvent;

import com.sun.imageio.plugins.gif.GIFImageReaderSpi;

import nz.ac.victoria.swen424.XmlLayoutNode;

public abstract class MainBaseType extends XmlLayoutNode implements IMainType
{
	protected SimulationStatus _simStat;
	
	public MainBaseType(String name)
	{
		super(name);
	}
	
	abstract SimulationStatus Simulate(int time) throws Exception;
	
	public static void Simulate(int timeSteps, int noOfSteps, List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers, List<ElGrid> grids, XMLEventWriter xmlWriter) throws Exception
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "simulation"));
		
		int time = 0;
		
		for (int i = 0; i < noOfSteps; i++)
		{
			Boolean result = MainBaseType.SimulateStep(time, producers, consumers, transformers, grids);
			xmlWriter.add(eventFactory.createStartElement("", "", "step"));
			xmlWriter.add(eventFactory.createAttribute("number", Integer.toString(i+1)));
			xmlWriter.add(eventFactory.createAttribute("day", Integer.toString(time / 24)));
			xmlWriter.add(eventFactory.createAttribute("time", Integer.toString(time % 24)));
			xmlWriter.add(eventFactory.createAttribute("day", Boolean.toString(result)));
			
			MainBaseType.WriteSimulationStep(time, producers, consumers, transformers, grids, xmlWriter);
			
			xmlWriter.add(eventFactory.createEndElement("", "", "step")); // </step>
			
			time += timeSteps;
		}
		
		xmlWriter.add(eventFactory.createEndElement("", "", "simulation")); // </simulation>

	}
	
	public static void WriteSimulationStep(int time, List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers, List<ElGrid> grids, XMLEventWriter xmlWriter) throws Exception
	{
		for (ElConsumer consumer : consumers)
		{
			consumer.writeSimulationData(xmlWriter);
		}

		for (ElProducer producer : producers)
		{
			producer.writeSimulationData(xmlWriter);
		}

		for (ElTransformer transformer : transformers)
		{
			transformer.writeSimulationData(xmlWriter);
		}
		
		for (ElGrid grid : grids)
		{
			grid.writeSimulationData(xmlWriter);
		}
	}
	
	private static double redistributeProduction(double elUsage, double possibleProduction, List<SimulationStatus> prodStatus) throws Exception
	{
		double globalDiff = 0;
		if (elUsage < 0 && possibleProduction > 0 && Math.abs(elUsage) <= possibleProduction)
		{
			double percentage = Math.abs(elUsage) / possibleProduction;
			for (SimulationStatus simStat : prodStatus)
			{
				double diff = (simStat.maxElectricity - simStat.currentElectricity) * percentage;
				globalDiff += diff;
				//simStat.currentElectricity += diff;
				((ElProducer)(simStat.type)).updateProduction(diff);
				if(simStat.currentElectricity > simStat.maxElectricity)
				{
					throw new Exception("To much energy porduction");
				}
			}
		}
		
		return globalDiff;
	}
	
	public static Boolean SimulateStep(int time, List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers, List<ElGrid> grids) throws Exception
	{
		double elUsage = 0;
		double possibleProduction = 0;
		boolean isOk = true;
		
		// accumulate all the consumption
		for (ElConsumer consumer : consumers)
		{
			elUsage += consumer.Simulate(time).currentElectricity;
		}
		
		// add general 10% for loss (estimate)
		double lossAssumption = elUsage * 0.1;
		elUsage += lossAssumption;

		// accumulate production capacity
		List<SimulationStatus> prodStatus = new LinkedList<>();
		for (ElProducer producer : producers)
		{
			SimulationStatus simStat = producer.Simulate(time);
			if (producer.canChange())
			{
				elUsage += simStat.currentElectricity;
				possibleProduction += simStat.maxElectricity - simStat.currentElectricity;
				prodStatus.add(simStat);
			}
			else
			{
				elUsage += simStat.currentElectricity;
			}
		}
		
		// Try and meet the exact consumption
		double diff = redistributeProduction(elUsage, possibleProduction, prodStatus);
		elUsage+= diff;
		possibleProduction -= diff;
//		if (elUsage < 0 && possibleProduction > 0 && Math.abs(elUsage) <= possibleProduction)
//		{
//			double percentage = Math.abs(elUsage) / possibleProduction;
//			for (SimulationStatus simStat : prodStatus)
//			{
//				double diff = (simStat.maxElectricity - simStat.currentElectricity) * percentage;
//				elUsage += diff;
//				possibleProduction -= diff;
//				simStat.currentElectricity += diff;
//				if(simStat.currentElectricity > simStat.maxElectricity)
//				{
//					throw new Exception("To much energy porduction");
//				}
//			}
//		}
		
		// remove remove loss assumption and replace with actual losses
		elUsage -= lossAssumption;
		
		// Check Transformers and calculate loss
		for (ElTransformer transformer : transformers)
		{
			SimulationStatus simStat = transformer.Simulate(time);
			elUsage -= simStat.loss;
			isOk = isOk && simStat.isOk;
		}
		
		// Check Grid and calculate loss
		List<SimulationStatus> gridSimStat = new LinkedList<>();
		for(ElGrid grid : grids)
		{
			SimulationStatus simStat = grid.Simulate(time);
			if(simStat.currentElectricity == Double.MAX_VALUE)
			{
				gridSimStat.add(simStat);
			}
			else
			{
				elUsage -= simStat.loss;
				isOk = isOk & simStat.isOk;
			}
		}
		
		int gridSize = 0;
		while(gridSimStat.size() > 0)
		{
			if(gridSize == gridSimStat.size())
			{
				ElGrid grid = (ElGrid)gridSimStat.get(0).type;
				grid.ForceBalance();
				elUsage -= grid._simStat.loss;
				gridSimStat.remove(0);
			}
			
			for (int i = 0; i < gridSimStat.size(); i++)
			{
				SimulationStatus simStat = gridSimStat.get(i);
				ElGrid grid = (ElGrid)simStat.type;
				if(grid.Balance())
				{
					elUsage -= simStat.loss;
					gridSimStat.remove(i);
					i--;
				}
			}
			
			gridSize = gridSimStat.size();
		}
		
		diff = redistributeProduction(elUsage, possibleProduction, prodStatus);
		elUsage += diff;
		possibleProduction -= diff;
		
		// Allow for some small imbalance due to precision issues
		return compareRange(elUsage, 0, null) && isOk;
		//return elUsage >= -0.1 && elUsage <= 0.1 && isOk;
	}
	
	public static boolean compareRange(double a, double b, SimulationStatus simStat)
	{
		if(simStat == null)
		{
			return a <= b + 0.1 && a >= b -0.1;
		}
		
		return a <= b + Math.abs(simStat.loss) + 0.1 && a >= b - Math.abs(simStat.loss) - 0.1;
		
	}
	
	public boolean compareRange(double a, double b)
	{
		return compareRange(a, b, _simStat);
	}
}
