package nz.ac.victoria.swen424.mainTypes;

import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElConsumer extends MainBaseType{
	private int _minConsumption;
	private int _maxConsumption;
	private ElTransformer _connect;
	
	
public ElConsumer(String name, int minConsumption, int maxConsumption){
	super(name);
	_minConsumption = minConsumption;
	_maxConsumption = maxConsumption;
	}

public void connectTransformer(ElTransformer connect){
	if(connect.decreaseUsage(_maxConsumption, this) == true){
		if(connect.getLeftNet() == 1 || connect.getRightNet() == 1){
			if(_connect == null){ _connect = connect; System.out.println("Consumer " + _name + " connected to transformer");}
			else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 1"); }
		}
		else{ System.out.println("Could not connect transformer due to a difference in voltage levels");}
	}
}


@Override
public String getData() {
	// TODO show the data related to the consumer
	// _name, _minConsumption & _maxConsumption
	return _name;
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
}
