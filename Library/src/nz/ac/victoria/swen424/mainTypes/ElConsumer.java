package nz.ac.victoria.swen424.mainTypes;

import java.awt.*;

import javax.swing.*;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElConsumer extends MainBaseType implements IMainType {
	private String _name;
	private int _minConsumption;
	private int _maxConsumption;
	private ElTransformer _connect;
	
	
public ElConsumer(String name, int minConsumption, int maxConsumption){
	super(name);
	_minConsumption = minConsumption;
	_maxConsumption = maxConsumption;
	}

public void connectTransformer(ElTransformer connect){
	if(connect.getLeftNet() == 1 || connect.getRightNet() == 1){
		if(_connect == null){ _connect = connect; }
		else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 1"); }
	}
	else{ System.out.println("Could not connect transformer due to a difference in voltage levels");}
}


@Override
public String getData() {
	// TODO show the data related to the consumer
	// _name, _minConsumption & _maxConsumption
	return _name;
}

@Override
public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException {
	// method for writing consumer to xml file
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "consumer"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("minConsumption", Integer.toString(_minConsumption)));
		xmlWriter.add(eventFactory.createAttribute("maxConsumption", Integer.toString(_maxConsumption)));
		
		// TODO further information comes here
		
		xmlWriter.add(eventFactory.createEndElement("", "", "consumer"));
}
}
