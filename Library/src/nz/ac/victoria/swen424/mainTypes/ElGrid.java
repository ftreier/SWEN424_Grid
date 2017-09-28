package nz.ac.victoria.swen424.mainTypes;

public class ElGrid {

	private int _maxCapacity;
	private int _percentUsage;
	private int _efficiency;
	private int _voltage;
	private String _sector;
	private ElTransformer connect1;
	private ElTransformer connect2;
	
	public ElGrid(int maxCapacity, int percentUsage, int efficiency, int voltage, String sector){
		_maxCapacity = maxCapacity;
		_percentUsage = percentUsage;
		_efficiency = efficiency;
		_voltage = voltage;
		_sector = sector;
	}
	
	public void connectTransformer(ElTransformer connect){
		if(connect.getLeftNet() == _voltage || connect.getRightNet() == _voltage){
			if(connect1 == null){ connect1 = connect; }
			else if(connect2 == null){ connect2 = connect; }
			else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 2"); }
		}
		else{ System.out.println("Could not connect transformer due to a difference in voltage levels");}
	}
}
