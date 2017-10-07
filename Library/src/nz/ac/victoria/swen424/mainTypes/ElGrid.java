package nz.ac.victoria.swen424.mainTypes;

public class ElGrid implements IMainType{

	private int _maxCapacity;
	private int _percentUsage;
	private int _efficiency;
	private int _voltage;
	private String _sector;
	private String _connectName1;
	private String _connectName2;
	private ElTransformer _connect1;
	private ElTransformer _connect2;
	
	public ElGrid(int maxCapacity, int percentUsage, int efficiency, int voltage, String sector, String connectName1, String connectName2){
		_maxCapacity = maxCapacity;
		_percentUsage = percentUsage;
		_efficiency = efficiency;
		_voltage = voltage;
		_sector = sector;
		_connectName1 = connectName1;
		_connectName2 = connectName2;
		
	}
	
	public void connectTransformer(ElTransformer connect){
		if(connect.increaseUsage((_percentUsage/100)*_maxCapacity, this) == true){
			if(connect.getLeftNet() == _voltage || connect.getRightNet() == _voltage){
				if(_connect1 == null){ _connect1 = connect; System.out.println("Grid " + _sector + " connected to transformer 1");}
				else if(_connect2 == null){ _connect2 = connect; System.out.println("Grid " + _sector + " connected to transformer 2");}
				else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 2"); }
			}
			else{ System.out.println("Could not connect transformer due to a difference in voltage levels");}
		}
	}
	
	public String getName1(){
		return _connectName1;
	}
	
	public String getName2(){
		return _connectName2;
	}

	@Override
	public String getData() {
		// TODO Auto-generated method stub
		return null;
	}
}
