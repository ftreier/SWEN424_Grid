package nz.ac.victoria.swen424.mainTypes;

import nz.ac.victoria.swen424.XmlLayoutNode;

public abstract class MainBaseType extends XmlLayoutNode implements IMainType
{
	public MainBaseType(String name)
	{
		super(name);
	}
	
	abstract SimulationStatus Simulate(int time);
}
