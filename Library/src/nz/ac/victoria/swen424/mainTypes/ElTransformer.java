package nz.ac.victoria.swen424.mainTypes;

public class ElTransformer
{
	private String _name;
	private int _maxcapacity;
	private int _usage;
	private int _efficiency;
	private int leftNetLevel;
	private int rightNetLevel;

	public ElTransformer(String name, int maxcapacity, int usage, int efficiency, int leftNet, int rightNet){
		_name = name;
		_maxcapacity = maxcapacity;
		_usage = usage;
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
	
	public Boolean increaseUsage(int increment){
		if(_usage+(increment*_efficiency) > _maxcapacity){
			System.out.println("Cannot exceed maximum capacity of transformer");
			return false;
		}
		_usage += (increment*_efficiency);
		return true;
	}
	
	public Boolean decreaseUsage(int increment){
		if(_usage-(increment*_efficiency) < 0){
			System.out.println("Cannot fall below 0 usage on transformer");
			return false;
		}
		_usage -= (increment*_efficiency);
		return true;
	}
}
