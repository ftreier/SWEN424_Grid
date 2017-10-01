package nz.ac.victoria.swen424;

import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;

/**
 * Interface for all classes that need to write into
 * the layout section of the XML.
 */
public interface IXmlWriteLayoutData 
{
	/**
	 * Method to write the layout of this element
	 * @param xmlWriter
	 * the xmlWriter to write the element into
	 * @throws XMLStreamException
	 */
	public void writeHeaderData(XMLEventWriter xmlWriter) throws XMLStreamException;
}
