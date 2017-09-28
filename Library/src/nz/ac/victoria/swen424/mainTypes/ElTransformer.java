package nz.ac.victoria.swen424.mainTypes;

public class ElTransformer
{
	private String _name;
	private int _maxcapacity;
	private int _efficiency;
	private int leftNetLevel;
	private int rightNetLevel;

	public ElTransformer(String name, int maxcapacity, int efficiency, int leftNet, int rightNet){
		_name = name;
		_maxcapacity = maxcapacity;
		_efficiency = efficiency;
		leftNetLevel = leftNet;
		rightNetLevel = rightNet;
	}
	
	public int getLeftNet(){
		return leftNetLevel;
	}
	
	public int getRightNet(){
		return rightNetLevel;
	}
}
