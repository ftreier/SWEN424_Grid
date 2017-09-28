package nz.ac.victoria.swen424.mainTypes;

import java.awt.*;
import javax.swing.*;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElConsumer implements IMainType{
	private String _name;
	private int _minConsumption;
	private int _maxConsumption;
	
	
public ElConsumer(String name, int minConsumption, int maxConsumption){
	_name = name;
	_minConsumption = minConsumption;
	_maxConsumption = maxConsumption;
	}


@Override
public String getData() {
	// TODO show the data related to the consumer
	// _name, _minConsumption & _maxConsumption
	return _name;
}
}
