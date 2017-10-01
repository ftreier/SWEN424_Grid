package nz.ac.victoria.swen424.mainTypes;

import java.util.HashSet;
import java.util.Set;

public class ElTransformer
{
	private String _name;
	private int _maxcapacity;
	private int _usage;
	private int _efficiency;
	private int leftNetLevel;
	private int rightNetLevel;
	Set<IMainType> connections;

	public ElTransformer(String name, int maxcapacity, int usage, int efficiency, int leftNet, int rightNet){
		_name = name;
		_maxcapacity = maxcapacity;
		_usage = usage;
		_efficiency = efficiency;
		leftNetLevel = leftNet;
		rightNetLevel = rightNet;
		connections = new HashSet<IMainType>();
	}
	
	public int getLeftNet(){
		return leftNetLevel;
	}
	
	public int getRightNet(){
		return rightNetLevel;
	}
	
	public Boolean increaseUsage(int increment, IMainType connect){
		if(_usage+(increment*(_efficiency)/100) > _maxcapacity){
			System.out.println("Cannot exceed maximum capacity of transformer");
			return false;
		}
		_usage += (increment*(_efficiency/100));
		addConnection(connect);
		return true;
	}
	
	public Boolean decreaseUsage(int increment, IMainType connect){
		if(_usage-(increment*(_efficiency/100)) < 0){
			System.out.println("Cannot fall below 0 usage on transformer");
			return false;
		}
		_usage -= (increment*(_efficiency/100));
		addConnection(connect);
		return true;
	}
	
	public void addConnection(IMainType connect){
		connections.add(connect);
	}
	
	public void removeConnection(IMainType remove){
		connections.remove(remove);
	}
	
	public Set<IMainType> getConnections(){
		return connections;
	}
}
