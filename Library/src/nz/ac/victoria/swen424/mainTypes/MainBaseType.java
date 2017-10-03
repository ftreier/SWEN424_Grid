package nz.ac.victoria.swen424.mainTypes;

import java.util.LinkedList;
import java.util.List;

import nz.ac.victoria.swen424.XmlLayoutNode;

public abstract class MainBaseType extends XmlLayoutNode implements IMainType
{
	public MainBaseType(String name)
	{
		super(name);
	}
	
	abstract SimulationStatus Simulate(int time) throws Exception;
	
	public static void Simulate(int time, List<ElProducer> producers) throws Exception
	{
		List<SimulationStatus> prodStatus = new LinkedList<>();
		
		for (ElProducer producer : producers)
		{
			prodStatus.add(producer.Simulate(time));
		}
	}
}
