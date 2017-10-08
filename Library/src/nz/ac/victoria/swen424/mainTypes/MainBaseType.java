package nz.ac.victoria.swen424.mainTypes;

import java.util.LinkedList;
import java.util.List;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;

import nz.ac.victoria.swen424.SimulationIntervalEnum;
import nz.ac.victoria.swen424.XmlLayoutNode;

public abstract class MainBaseType extends XmlLayoutNode implements IMainType
{
	protected SimulationStatus _simStat;
	
	public MainBaseType(String name)
	{
		super(name);
	}
	
	abstract SimulationStatus Simulate(int time) throws Exception;
	
	public static void Simulate(SimulationIntervalEnum simInterval, int noOfSteps, List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers, List<ElGrid> grids, XMLEventWriter xmlWriter) throws Exception
	{
		int timeSteps = 1;
		switch (simInterval)
		{
		case OneHour:
			timeSteps = 1;
			break;
		case TwoHours:
			timeSteps = 2;
			break;
		case ThreeHours:
			timeSteps = 3;
			break;
		case FourHours:
			timeSteps = 4;
			break;
		case SixHours:
			timeSteps = 6;
			break;
		case EightHours:
			timeSteps = 8;
			break;
		}
		
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "simulation"));
		
		int time = 0;
		
		for (int i = 0; i < noOfSteps; i++)
		{
			SimulationStatus result = MainBaseType.SimulateStep(time, producers, consumers, transformers, grids);
			xmlWriter.add(eventFactory.createStartElement("", "", "step"));
			xmlWriter.add(eventFactory.createAttribute("number", Integer.toString(i+1)));
			xmlWriter.add(eventFactory.createAttribute("day", Integer.toString(time / 24)));
			xmlWriter.add(eventFactory.createAttribute("time", Integer.toString(time % 24)));
			xmlWriter.add(eventFactory.createAttribute("isOk", Boolean.toString(result.isOk)));
			xmlWriter.add(eventFactory.createAttribute("overallLoss", Double.toString(result.loss)));
			xmlWriter.add(eventFactory.createAttribute("currentConsumption", Double.toString(result.currentElectricity)));
			xmlWriter.add(eventFactory.createAttribute("minProduction", Double.toString(result.minElectricity)));
			xmlWriter.add(eventFactory.createAttribute("maxProduction", Double.toString(result.maxElectricity)));
			
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
		double percentage = -1 * elUsage / possibleProduction;
		for (SimulationStatus simStat : prodStatus)
		{
			double diff = (simStat.maxElectricity - simStat.currentElectricity) * percentage;
			globalDiff += diff;
			((ElProducer)(simStat.type)).updateProduction(diff);
		}
		
		return globalDiff;
	}
	
	public static SimulationStatus SimulateStep(int time, List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers, List<ElGrid> grids) throws Exception
	{
		SimulationStatus netSimStat = new SimulationStatus();
		double elUsage = 0;
		double possibleProduction = 0;
		boolean isOk = true;
		
		// accumulate all the consumption
		for (ElConsumer consumer : consumers)
		{
			elUsage += consumer.Simulate(time).currentElectricity;
		}

		netSimStat.currentElectricity = Math.abs(elUsage);

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
				netSimStat.maxElectricity += simStat.maxElectricity;
			}
			else
			{
				elUsage += simStat.currentElectricity;
				netSimStat.maxElectricity += simStat.currentElectricity;
			}
			
			netSimStat.minElectricity += simStat.currentElectricity;
		}
		
		// Try and meet the exact consumption
		double diff = redistributeProduction(elUsage, possibleProduction, prodStatus);
		elUsage+= diff;
		possibleProduction -= diff;
		
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
		
		netSimStat.loss = Math.abs(elUsage);
		
		double diff2 = redistributeProduction(elUsage, possibleProduction, prodStatus);
		elUsage += diff2;
		possibleProduction -= diff2;
		
		if(diff + diff2 < 0)
		{
			isOk = false;
		}
		
		for (ElTransformer transformer : transformers)
		{
			isOk = isOk && transformer.IsOk();
		}
		
		// Allow for some small imbalance due to precision issues
		netSimStat.isOk = compareRange(elUsage, 0, null) && isOk && possibleProduction > 0;
		return netSimStat;
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
