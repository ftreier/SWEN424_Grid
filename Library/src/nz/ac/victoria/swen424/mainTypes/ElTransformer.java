package nz.ac.victoria.swen424.mainTypes;

import java.util.HashSet;
import javax.xml.stream.XMLEventWriter;
import java.util.Set;
import javax.xml.stream.XMLStreamException;

public class ElTransformer extends MainBaseType
{
	private int _maxcapacity;
	private int _usage;
	private int _efficiency;
	private int leftNetLevel;
	private int rightNetLevel;
	Set<MainBaseType> connections;

	public ElTransformer(String name, int maxcapacity, int usage, int efficiency, int leftNet, int rightNet){
		super(name);
		_maxcapacity = maxcapacity;
		_usage = usage;
		_efficiency = efficiency;
		leftNetLevel = leftNet;
		rightNetLevel = rightNet;
		connections = new HashSet<MainBaseType>();
	}
	
	public int getLeftNet(){
		return leftNetLevel;
	}
	
	public int getRightNet(){
		return rightNetLevel;
	}
	
	public Boolean increaseUsage(int increment, MainBaseType connect){
		if(_usage+(increment*(_efficiency)/100) > _maxcapacity){
			System.out.println("Cannot exceed maximum capacity of transformer");
			return false;
		}
		_usage += (increment*(_efficiency/100));
		addConnection(connect);
		return true;
	}
	
	public Boolean decreaseUsage(int increment, MainBaseType connect){
		if(_usage-(increment*(_efficiency/100)) < 0){
			System.out.println("Cannot fall below 0 usage on transformer");
			return false;
		}
		_usage -= (increment*(_efficiency/100));
		addConnection(connect);
		return true;
	}
	
	public void addConnection(MainBaseType connect){
		connections.add(connect);
	}
	
	public void removeConnection(MainBaseType remove){
		connections.remove(remove);
	}
	
	public Set<MainBaseType> getConnections(){
		return connections;
	}

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
