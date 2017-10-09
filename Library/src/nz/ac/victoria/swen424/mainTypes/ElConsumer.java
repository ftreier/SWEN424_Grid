package nz.ac.victoria.swen424.mainTypes;

import java.util.List;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import nz.ac.victoria.swen424.UsageProfile;

public class ElConsumer extends MainBaseType{
	private int _maxConsumption;
	private ElTransformer _connect;
	private UsageProfile _usageProfile;
	
	//for rendering purposes
		private int x;
		private int y;
		private int size;


public ElConsumer(String name, int maxConsumption){
	super(name);
	_maxConsumption = maxConsumption;
	}

public void connectTransformer(ElTransformer connect){
	_connect = connect;
	connect.addLeftConnection(this);
	System.out.println("Consumer " + _name + " Transformer connect");
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

public void connectUsageProfile(UsageProfile usage){
	_usageProfile = usage;
	System.out.println("Consumer "+_name+" Usage Profile register");
}

public int getMaxConsumption(){
	return _maxConsumption;
}

public String getData() {
	return _name;
}

@Override
public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException
{
	XMLEventFactory eventFactory = XMLEventFactory.newInstance();
	
	xmlWriter.add(eventFactory.createStartElement("", "", "consumer"));
	xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
	xmlWriter.add(eventFactory.createAttribute("name", _name));
	xmlWriter.add(eventFactory.createAttribute("maxConsumption", Integer.toString(_maxConsumption)));
	xmlWriter.add(eventFactory.createAttribute("usageProfilID", _usageProfile.GetGuid().toString()));
	xmlWriter.add(eventFactory.createAttribute("usageProfilName", _usageProfile.GetName()));

	// Write connection
	xmlWriter.add(eventFactory.createStartElement("", "", "connectedTo"));
	xmlWriter.add(eventFactory.createAttribute("transformerId", _connect.GetGuid().toString()));
	xmlWriter.add(eventFactory.createAttribute("transformerName", _connect.GetName()));
	xmlWriter.add(eventFactory.createEndElement("", "", "connectedTo")); // </connectedTo>
	
	xmlWriter.add(eventFactory.createEndElement("", "", "consumer")); // </consumer>
}

@Override
SimulationStatus Simulate(int time) throws Exception {

	_simStat = new SimulationStatus();
	_simStat.type = this;
	_simStat.minElectricity = 0;
	_simStat.maxElectricity = -_maxConsumption;

	int dayTime = time % 24;

	if (dayTime < 7)
	{
		_simStat.currentElectricity = -_maxConsumption * _usageProfile.GetNight() / 100.0;
	}
	else if (dayTime < 12)
	{
		_simStat.currentElectricity = -_maxConsumption * _usageProfile.GetMorning() / 100.0;
	}
	else if (dayTime < 14)
	{
		_simStat.currentElectricity = -_maxConsumption * _usageProfile.GetMidday() / 100.0;
	}
	else if (dayTime < 18)
	{
		_simStat.currentElectricity = -_maxConsumption * _usageProfile.GetAfternoon() / 100.0;
	}
	else
	{
		_simStat.currentElectricity = -_maxConsumption * _usageProfile.GetEavening() / 100.0;
	}

	return _simStat;
}

@Override
public void writeSimulationData(XMLEventWriter xmlWriter) throws XMLStreamException {
	XMLEventFactory eventFactory = XMLEventFactory.newInstance();

	xmlWriter.add(eventFactory.createStartElement("", "", "consumer"));
	xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
	xmlWriter.add(eventFactory.createAttribute("name", _name));
	xmlWriter.add(eventFactory.createAttribute("consumption", Double.toString(-_simStat.currentElectricity)));
	xmlWriter.add(eventFactory.createAttribute("usage", Double.toString(_simStat.getUsage())));
	xmlWriter.add(eventFactory.createAttribute("maxConsumption", Integer.toString(_maxConsumption)));
	xmlWriter.add(eventFactory.createEndElement("", "", "consumer")); // </consumer>
}

// return a stateObject for graphical rendering
public StateObject getState() {
	StateObject prodState = new StateObject();
	prodState.id = this._guid;
	prodState.name = this._name;
	prodState.type = this;
	return prodState;
}
//Following methods not needed in here
@Override
public ElTransformer getLeftTransformer() {
	// TODO Auto-generated method stub
	return _connect;
}

@Override
public ElTransformer getRightTransformer() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<MainBaseType> getProdCon() {
	// TODO Auto-generated method stub
	return null;
}
}
