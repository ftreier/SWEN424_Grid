package nz.ac.victoria.swen424.mainTypes;

import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElTransformer extends MainBaseType
{
	private int _maxcapacity;
	private int _efficiency;
	private int leftNetLevel;
	private int rightNetLevel;

	public ElTransformer(String name, int maxcapacity, int efficiency, int leftNet, int rightNet){
		super(name);
		_maxcapacity = maxcapacity;
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

	@Override
	public String getData() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException {
		// TODO Auto-generated method stub
		
	}
}
