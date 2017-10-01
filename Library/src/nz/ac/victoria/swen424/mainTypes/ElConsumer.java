package nz.ac.victoria.swen424.mainTypes;

import java.awt.*;

import javax.swing.*;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElConsumer implements IMainType{
	private String _name;
	private int _minConsumption;
	private int _maxConsumption;
	private ElTransformer _connect;
	
	
public ElConsumer(String name, int minConsumption, int maxConsumption){
	_name = name;
	_minConsumption = minConsumption;
	_maxConsumption = maxConsumption;
	}

public void connectTransformer(ElTransformer connect){
	if(connect.decreaseUsage(_maxConsumption, this) == true){
		if(connect.getLeftNet() == 1 || connect.getRightNet() == 1){
			if(_connect == null){ _connect = connect; }
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
}
