package nz.ac.victoria.swen424.mainTypes;

import java.util.LinkedList;
import java.util.List;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElTransformer extends MainBaseType
{
	private int _maxcapacity;
	private int _efficiency;
	private List<MainBaseType> _leftConnection;
	private List<ElGrid> _rightConnection;

	//for rendering purposes
		private int x;
		private int y;
		private int size;

	public ElTransformer(String name, int maxcapacity, int efficiency){
		super(name);
		_maxcapacity = maxcapacity;
		_efficiency = efficiency;
		_leftConnection = new LinkedList<>();
		_rightConnection = new LinkedList<>();
	}
	@Override
	public void setRender(int x, int y, int size) {
		this.x=x;
		this.y=y;
		this.size=size;
	}

	public int getX() {return x;}
	public int getY() {return y;}
	public int getSize() {return size;}

	public void addLeftConnection(MainBaseType object)
	{
		_leftConnection.add(object);
	}

	public void addRightConnection(ElGrid object)
	{
		_rightConnection.add(object);
	}
	
	public List<MainBaseType> getLeftConnections()
	{
		return _leftConnection;
	}
	
	public List<ElGrid> getRightConnections()
	{
		return _rightConnection;
	}
	
	public String getName(){
		return _name;
	}

	public String getData() {
		// TODO Auto-generated method stub
		return this._name;
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "transformer"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("maxCapacity", Integer.toString(_maxcapacity)));
		xmlWriter.add(eventFactory.createAttribute("efficiency", Integer.toString(_efficiency)));
		
		// Write connection
		xmlWriter.add(eventFactory.createStartElement("", "", "connections"));
		for (MainBaseType mainBaseType : _leftConnection)
		{
			if(mainBaseType instanceof ElProducer)
			{
				xmlWriter.add(eventFactory.createStartElement("", "", "producer"));
			}
			else if (mainBaseType instanceof ElConsumer)
			{
				xmlWriter.add(eventFactory.createStartElement("", "", "consumer"));
			}

			xmlWriter.add(eventFactory.createAttribute("id", mainBaseType.GetGuid().toString()));
			xmlWriter.add(eventFactory.createAttribute("name", mainBaseType.GetName()));
			xmlWriter.add(eventFactory.createAttribute("side", "left"));

			if(mainBaseType instanceof ElProducer)
			{
				xmlWriter.add(eventFactory.createEndElement("", "", "producer"));
			}
			else if (mainBaseType instanceof ElConsumer)
			{
				xmlWriter.add(eventFactory.createEndElement("", "", "consumer"));
			}
		}
		
		for (ElGrid grid : _rightConnection)
		{
			xmlWriter.add(eventFactory.createStartElement("", "", "grid"));
			xmlWriter.add(eventFactory.createAttribute("id", grid.GetGuid().toString()));
			xmlWriter.add(eventFactory.createAttribute("name", grid.GetName()));
			xmlWriter.add(eventFactory.createAttribute("side", "right"));
			xmlWriter.add(eventFactory.createEndElement("", "", "grid"));
		}
		xmlWriter.add(eventFactory.createEndElement("", "", "connections")); // </connections>
		
		xmlWriter.add(eventFactory.createEndElement("", "", "transformer")); // </transformer>
	}

	@Override
	SimulationStatus Simulate(int time) throws Exception
	{
		_simStat = new SimulationStatus();
		_simStat.type = this;
		_simStat.maxElectricity = _maxcapacity;
		_simStat.minElectricity = 0;
		
		double elUsage = 0;
		
		for (MainBaseType mainBaseType : _leftConnection)
		{
			elUsage += mainBaseType._simStat.currentElectricity;
		}
		
		_simStat.loss = Math.abs(elUsage) * (100 - _efficiency) / 100 ;
		_simStat.currentElectricity = elUsage - _simStat.loss;
		if(_simStat.currentElectricity > _maxcapacity)
		{
			_simStat.isOk = false;
		}
		
		return _simStat;
	}

	@Override
	public void writeSimulationData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "transformer"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("isOk", Boolean.toString(_simStat.isOk)));
		xmlWriter.add(eventFactory.createAttribute("loss", Double.toString(_simStat.loss)));
		xmlWriter.add(eventFactory.createAttribute("currentUsage", Double.toString(Math.abs(_simStat.currentElectricity))));
		xmlWriter.add(eventFactory.createAttribute("usage", Double.toString(_simStat.getUsage())));
		xmlWriter.add(eventFactory.createAttribute("maxCapacity", Integer.toString(_maxcapacity)));
		xmlWriter.add(eventFactory.createEndElement("", "", "transformer")); // </transformer>
	}

	// return a stateObject for graphical rendering
	public StateObject getState() {
		StateObject prodState = new StateObject();
		prodState.id = this._guid;
		prodState.name = this._name;
		prodState.type = this;
		return prodState;
	}

	public boolean IsOk()
	{
		if(!compareRange(_simStat.currentElectricity, 0))
		{
			if(_rightConnection.size() == 0)
			{
				_simStat.isOk = false;
			}

			boolean hasInput = false;
			for(ElGrid g : _rightConnection)
			{
				if (!g._simStat.isFailure)
				{
					hasInput = true;
					break;
				}
			}

			if(!hasInput)
			{
				_simStat.isOk = false;
			}
		}
		
		if(Math.abs(_simStat.currentElectricity) > _maxcapacity)
		{
			_simStat.isOk = false;
		}

		return _simStat.isOk;
	}

	//Return all the producers and consumers attached to this transformer
	@Override
	public List<MainBaseType> getProdCon() {
		// TODO Auto-generated method stub
		return _leftConnection;
	}
	//Not needed in here
	@Override
	public ElTransformer getLeftTransformer() {
		// TODO Auto-generated method stub
		return null;
	}
	//Not needed in here
	@Override
	public ElTransformer getRightTransformer() {
		// TODO Auto-generated method stub
		return null;
	}
}
