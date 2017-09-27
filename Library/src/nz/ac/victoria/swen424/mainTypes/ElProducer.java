package nz.ac.victoria.swen424.mainTypes;

import java.util.UUID;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import nz.ac.victoria.swen424.IXmlWriteLayoutData;

public class ElProducer implements IMainType, IXmlWriteLayoutData
{
	private UUID _guid;
	private String _name;
	private int _minProduction;
	private int _maxProduction;
	
	public ElProducer(String name, int minProduction, int maxProduction)
	{
		_guid = UUID.randomUUID();
		_name = name;
		_minProduction = minProduction;
		_maxProduction = maxProduction;
	}

	@Override
	public String getData()
	{
		// TODO return useful data
		return _name;
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "producer"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("minProduction", Integer.toString(_minProduction)));
		xmlWriter.add(eventFactory.createAttribute("maxProduction", Integer.toString(_maxProduction)));
		
		// TODO further information comes here
		
		xmlWriter.add(eventFactory.createEndElement("", "", "producer"));
	}
}
