package nz.ac.victoria.swen424;

import java.util.Random;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

import com.sun.xml.internal.stream.XMLBufferListener;

public class UsageProfile extends XmlLayoutNode
{
	private int _night;
	private int _morning;
	private int _midday;
	private int _afternoon;
	private int _eavening;
	private Boolean _random;
	
	public UsageProfile(String name, int night, int morning, int midday, int afternoon, int eavening, Boolean random)
	{
		super(name);
		if(!random)
		{
			_night = night;
			_morning = morning;
			_midday = midday;
			_afternoon = afternoon;
			_eavening = eavening;
		}
		else
		{
			Random rand = new Random();
			_night = rand.nextInt(101);
			_morning = rand.nextInt(101);
			_midday = rand.nextInt(101);
			_afternoon = rand.nextInt(101);
			_eavening = rand.nextInt(101);
		}
		_random = random;
	}

	@Override
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException
	{
		XMLEventFactory eventFactory = XMLEventFactory.newInstance();
		
		xmlWriter.add(eventFactory.createStartElement("", "", "usageProfile"));
		xmlWriter.add(eventFactory.createAttribute("id", _guid.toString()));
		xmlWriter.add(eventFactory.createAttribute("name", _name));
		xmlWriter.add(eventFactory.createAttribute("isRandom", Boolean.toString(_random)));

		xmlWriter.add(eventFactory.createAttribute("night", Integer.toString(_night)));
		xmlWriter.add(eventFactory.createAttribute("morning", Integer.toString(_morning)));
		xmlWriter.add(eventFactory.createAttribute("midday", Integer.toString(_midday)));
		xmlWriter.add(eventFactory.createAttribute("afternoon", Integer.toString(_afternoon)));
		xmlWriter.add(eventFactory.createAttribute("eavening", Integer.toString(_eavening)));
		
		xmlWriter.add(eventFactory.createEndElement("", "", "usageProfile")); // </usageProfile>
	}
}
