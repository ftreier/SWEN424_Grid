package nz.ac.victoria.swen424.mainTypes;

public class ElGrid {

	private int _maxCapacity;
	private int _percentUsage;
	private int _efficiency;
	private int _voltage;
	private String _sector;
	
	public ElGrid(int maxCapacity, int percentUsage, int efficiency, int voltage, String sector){
		_maxCapacity = maxCapacity;
		_percentUsage = percentUsage;
		_efficiency = efficiency;
		_voltage = voltage;
		_sector = sector;
	}
}
