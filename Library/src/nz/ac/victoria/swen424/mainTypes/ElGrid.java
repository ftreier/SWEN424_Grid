package nz.ac.victoria.swen424.mainTypes;

import java.util.List;
import java.util.Random;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

public class ElGrid extends MainBaseType{

	private int _maxCapacity;
	private int _efficiency;
	private ElTransformer leftTransformer;
	private ElTransformer rightTransformer;
	private int _probabilityOfFailure;
	
	//for rendering purposes 
	private int x; 
	private int y; 
	private int size;

	
	public ElGrid(String name, int maxCapacity, int efficiency, int probabilityOfFailure){
		super(name);
		_maxCapacity = maxCapacity;
		_efficiency = efficiency;
		_probabilityOfFailure = probabilityOfFailure;
		
	}
	
	public void connectTransformer(ElTransformer connect)
	{
		if(leftTransformer == null)
		{
			leftTransformer = connect;
			connect.addRightConnection(this);
		}
		else if(rightTransformer == null)
		{
			rightTransformer = connect;
			connect.addRightConnection(this);
		}
		else
		{
		}
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

	public String getData() {
		// TODO Auto-generated method stub
		return this._name;
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "grid"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("maxCapacity", Integer.toString(_maxCapacity)));
		xmlWriter.add(eventFactory.createAttribute("efficiency", Integer.toString(_efficiency)));
		xmlWriter.add(eventFactory.createAttribute("probabilityOfFailure", Integer.toString(_probabilityOfFailure)));
		
		// Write connection
		xmlWriter.add(eventFactory.createStartElement("", "", "connections"));

		if(leftTransformer != null)
		{
			xmlWriter.add(eventFactory.createStartElement("", "", "transformer"));
			xmlWriter.add(eventFactory.createAttribute("id", leftTransformer.GetGuid().toString()));
			xmlWriter.add(eventFactory.createAttribute("name", leftTransformer.GetName()));
			xmlWriter.add(eventFactory.createAttribute("side", "left"));
			xmlWriter.add(eventFactory.createEndElement("", "", "transformer")); // </transformer>
		}
		
		if(rightTransformer != null)
		{
			xmlWriter.add(eventFactory.createStartElement("", "", "transformer"));
			xmlWriter.add(eventFactory.createAttribute("id", rightTransformer.GetGuid().toString()));
			xmlWriter.add(eventFactory.createAttribute("name", rightTransformer.GetName()));
			xmlWriter.add(eventFactory.createAttribute("side", "right"));
			xmlWriter.add(eventFactory.createEndElement("", "", "transformer")); // </transformer>
			xmlWriter.add(eventFactory.createEndElement("", "", "connections")); // </connections>
		}
		
		xmlWriter.add(eventFactory.createEndElement("", "", "grid")); // </grid>
	}

	@Override
	SimulationStatus Simulate(int time) throws Exception
	{
		Random r = new Random();
		_simStat = new SimulationStatus();
		_simStat.type = this;
		_simStat.maxElectricity = _maxCapacity;
		_simStat.minElectricity = 0;
		
		int failure = r.nextInt(1000);
		if(failure < _probabilityOfFailure)
		{
			_simStat.isFailure = true;
			_simStat.currentElectricity = 0;
			return _simStat;
		}
		
		// direct connection of two transformers
		if(leftTransformer.getRightConnections().size() == 1 && rightTransformer.getRightConnections().size() == 1)
		{
			double balance = leftTransformer._simStat.currentElectricity + rightTransformer._simStat.currentElectricity;
			if(compareRange(balance, 0))
			{
				_simStat.currentElectricity = leftTransformer._simStat.currentElectricity;
			}
			else
			{
				_simStat.currentElectricity = leftTransformer._simStat.currentElectricity;
			}
		}
		else if (leftTransformer.getRightConnections().size() == 1)
		{
			// Left side has just one transformer --> electricity needs to be transported from/to this node
			_simStat.currentElectricity = leftTransformer._simStat.currentElectricity;
		}
		else if (rightTransformer.getRightConnections().size() == 1)
		{
			// right side has just one transformer --> electricity needs to be transported from/to this node
			_simStat.currentElectricity = rightTransformer._simStat.currentElectricity;
		}
		else
		{
			// not clearly defined, so leave for later
			_simStat.currentElectricity = Double.MAX_VALUE;
		}
		
		finalizeSimStat();
		
		return _simStat;
	}

	private void finalizeSimStat()
	{
		if(_simStat.currentElectricity != Double.MAX_VALUE)
		{
			_simStat.loss = _simStat.currentElectricity * (100 - _efficiency) / 100;
			//_simStat.currentElectricity += _simStat.loss;
			
			if(_simStat.currentElectricity >= _maxCapacity)
			{
				_simStat.isOk = false;
			}
			else
			{
				_simStat.isOk = true;
			}
		}
	}
	
	public boolean Balance()
	{
		boolean isLeftReady = true;
		boolean isRightReady = true;
		double elUsageLeft = leftTransformer._simStat.currentElectricity;
		double elUsageRight = rightTransformer._simStat.currentElectricity;
		
		for (ElGrid grid : leftTransformer.getRightConnections())
		{
			if(grid != this)
			{
				if(grid._simStat.currentElectricity == Double.MAX_VALUE)
				{
					isLeftReady = false;
					break;
				}
				else
				{
					elUsageLeft -= grid._simStat.currentElectricity; 
				}
			}
		}
		
		for (MainBaseType connection : rightTransformer.getRightConnections())
		{
			ElGrid grid = (ElGrid)connection;
			if(grid != this)
			{
				if(grid._simStat.currentElectricity == Double.MAX_VALUE)
				{
					isRightReady = false;
					break;
				}
				else
				{
					elUsageRight += grid._simStat.currentElectricity; 
				}
			}
		}
		
		if(isLeftReady && isRightReady)
		{
			double balance = elUsageLeft + elUsageRight;
			//if(balance <= 0.1 && balance >= -0.1)
			if(compareRange(balance, 0))
			{
				_simStat.currentElectricity = elUsageLeft;
			}
			else
			{
				//_simStat.isOk = false;
				_simStat.currentElectricity = elUsageLeft;
			}
		}
		else if (isLeftReady)
		{
			_simStat.currentElectricity = elUsageLeft;
		}
		else if (isRightReady)
		{
			_simStat.currentElectricity = elUsageRight;
		}
		
		finalizeSimStat();
		
		return isLeftReady || isRightReady;
	}
	
	public void ForceBalance()
	{
		int totCapacity = 0;
		for (ElGrid grid : leftTransformer.getRightConnections())
		{
			totCapacity += grid._maxCapacity;
		}
		
		_simStat.currentElectricity = leftTransformer._simStat.currentElectricity * _maxCapacity / totCapacity;
		finalizeSimStat();
	}
	
	@Override
	public void writeSimulationData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "grid"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("isOk", Boolean.toString(_simStat.isOk)));
		xmlWriter.add(eventFactory.createAttribute("isFailure", Boolean.toString(_simStat.isFailure)));
		xmlWriter.add(eventFactory.createAttribute("currentUsage", Double.toString(Math.abs(_simStat.currentElectricity))));
		xmlWriter.add(eventFactory.createAttribute("loss", Double.toString(Math.abs(_simStat.loss))));
		xmlWriter.add(eventFactory.createAttribute("usage", Double.toString(_simStat.getUsage())));
		xmlWriter.add(eventFactory.createAttribute("maxCapacity", Integer.toString(_maxCapacity)));
		xmlWriter.add(eventFactory.createEndElement("", "", "grid")); // </consumer>
	}
	// return a stateObject for graphical rendering
	public StateObject getState() {
		StateObject prodState = new StateObject();
		prodState.id = this._guid;
		prodState.name = this._name;
		prodState.type = this;
		return prodState;
	}

	@Override
	public ElTransformer getLeftTransformer() {
		// TODO Auto-generated method stub
		return leftTransformer;
	}

	@Override
	public ElTransformer getRightTransformer() {
		// TODO Auto-generated method stub
		return rightTransformer;
	}
	//Following method not needed in here
	@Override
	public List<MainBaseType> getProdCon() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public boolean isOk()
	{
		_simStat.isOk = _simStat.isOk && Math.abs(_simStat.currentElectricity) < _maxCapacity;
		return _simStat.isOk;
	}
}
