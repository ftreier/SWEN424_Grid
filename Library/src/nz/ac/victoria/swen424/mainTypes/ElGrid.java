package nz.ac.victoria.swen424.mainTypes;

import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElGrid extends MainBaseType{

	private int _maxCapacity;
	private int _percentUsage;
	private int _efficiency;
	private int _voltage;
	private ElTransformer connect1;
	private ElTransformer connect2;
	
	public ElGrid(int maxCapacity, int percentUsage, int efficiency, int voltage, String sector){
		super(sector);
		_maxCapacity = maxCapacity;
		_percentUsage = percentUsage;
		_efficiency = efficiency;
		_voltage = voltage;
	}
	
	public void connectLeftTransformer(ElTransformer connect)
	{
		connect1 = connect;
		connect.addRightConnection(this);
	}
	
	public void connectRightTransformer(ElTransformer connect)
	{
		connect2 = connect;
		connect.addRightConnection(this);
	}
	
//	public void connectTransformer(ElTransformer connect)
//	{
//		if(connect.increaseUsage((_percentUsage/100)*_maxCapacity, this) == true){
//			if(connect.getLeftNet() == _voltage || connect.getRightNet() == _voltage){
//				if(connect1 == null){ connect1 = connect; System.out.println("Grid " + _name + " connected to transformer 1");}
//				else if(connect2 == null){ connect2 = connect; System.out.println("Grid " + _name + " connected to transformer 2");}
//				else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 2"); }
//			}
//			else{ System.out.println("Could not connect transformer due to a difference in voltage levels");}
//		}
//	}

	@Override
	public String getData() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException {
		// TODO Auto-generated method stub
		
	}

	@Override
	SimulationStatus Simulate(int time) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void writeSimulationData(XMLEventWriter xmlWriter) throws XMLStreamException {
		// TODO Auto-generated method stub
		
	}
}
