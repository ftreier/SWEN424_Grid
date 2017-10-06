package nz.ac.victoria.swen424.mainTypes;

import java.util.UUID;

public class StateObject {
	//universal
	public MainBaseType type = null;
	public String name;
	public UUID id; 
	public String usage;
	public String max;

	//consumer and producer
	public String prodcon;

	//grid and transformer
	public boolean isOK;
	public String currentUsage;
	public String loss;
	
	//producer only 
	public String min;
	
	//grid only 
	public boolean isFailure;
	
	public String getClassType() {
		return type.getClass().getSimpleName();
	}

}
