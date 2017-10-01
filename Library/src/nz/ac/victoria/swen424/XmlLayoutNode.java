package nz.ac.victoria.swen424;

import java.util.UUID;

public abstract class XmlLayoutNode implements IXmlWriteLayoutData
{
	protected UUID _guid;
	protected String _name;
	
	public XmlLayoutNode(String name)
	{
		_name = name;
		_guid = UUID.randomUUID();
	}
}
