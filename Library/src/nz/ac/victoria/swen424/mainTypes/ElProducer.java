package nz.ac.victoria.swen424.mainTypes;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElProducer extends MainBaseType
{
	private int _minProduction;
	private int _maxProduction;
	private String _connectName;
	private ElTransformer _connect;
	private ProducitionMethodeType _productionType;
	

	public ElProducer(String name, int minProduction, int maxProduction, ProducitionMethodeType prodType, String connectName)
	{
		super(name);
		_minProduction = minProduction;
		_maxProduction = maxProduction;
		_productionType = prodType;
		_connectName = connectName;
	}
	
	public void connectTransformer(ElTransformer connect){
		if(connect.increaseUsage(_maxProduction, this) == true){
			if(connect.getLeftNet() == 1 || connect.getRightNet() == 1){
				if(_connect == null){ _connect = connect; System.out.println("Producer " + _name + " connected to transformer"); }
				else{ System.out.println("Could not connect transformer to grid as it would exceed the maximum capacity of 1");}
			}
			else{ System.out.println("Could not connect transformer due to a difference in voltage levels"); }
		}
	}
	
	public String getTransName(){
		return _connectName;
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
