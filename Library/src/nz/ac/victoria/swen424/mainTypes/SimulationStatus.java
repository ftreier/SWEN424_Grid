package nz.ac.victoria.swen424.mainTypes;

public class SimulationStatus
{
	public double maxElectricity = 0;
	public double minElectricity = 0;
	public double currentElectricity = 0;
	public double loss = 0;
	public MainBaseType type = null;
	public boolean isOk = true;
	public boolean isFailure = false;
	
	public double getUsage()
	{
		return (Math.abs(currentElectricity) - Math.abs(minElectricity) + loss) / (Math.abs(maxElectricity) - Math.abs(minElectricity)) * 100;
	}
}