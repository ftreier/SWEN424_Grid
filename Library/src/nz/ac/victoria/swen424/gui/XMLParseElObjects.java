

package nz.ac.victoria.swen424.gui;

//import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

import javax.imageio.ImageIO;
import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import nz.ac.victoria.swen424.mainTypes.ElConsumer;
import nz.ac.victoria.swen424.mainTypes.ElGrid;
import nz.ac.victoria.swen424.mainTypes.ElProducer;
import nz.ac.victoria.swen424.mainTypes.ElTransformer;
import nz.ac.victoria.swen424.mainTypes.StateObject;

public class XMLParseElObjects extends JPanel {
  //List <ElConsumer>_consumers = new LinkedList<ElConsumer>();
   //List <ElProducer> _producers = new LinkedList <ElProducer>();
   //static ArrayList <ElTransformer> _transformers = new ArrayList <ElTransformer>();
   //static ArrayList <ElGrid> _grids = new ArrayList <ElGrid>();
   List <Step> _steps = new ArrayList<Step>();
   
   //Image files paths for each MainType
   private final String conImage = "/images/house.png";
   private final String tranImage = "/images/";
   private final String prodImage = "/images/powerplant.png";
   private final String gridImage = "/images/";

   
   // Array to save initial stepobjects in
   List <Step> steps = new ArrayList<Step>();
  
   public final void parseSimulationXML(List<ElProducer> producers, List<ElConsumer> consumers, List<ElTransformer> transformers) {

	   // try extract producers from _producers list based on ID# parsed in XML
	   try {
		   File file = new File("/Users/koe/Desktop/SWEN424_Grid/output.xml");
				   
		   DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		   DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		   Document doc = dBuilder.parse(file);
		   doc.getDocumentElement().normalize();
		   
		   NodeList _simList = doc.getElementsByTagName("simulation");
		   
			//there is only one simulation that contains a number of steps
			Node simNode = _simList.item(0);
			//each <step> is a child node of our one simulation
			NodeList stepList = simNode.getChildNodes();
			int j=1;
			int idCount = 1;
			while (j <= stepList.getLength()-2) {
				Step currStep = new Step();
				currStep.id = idCount;
				Node sNode = stepList.item(j);
				//the items within that <step> are our stateNodes
				NodeList stateList = sNode.getChildNodes();
				int i=0;
				while (i < stateList.getLength()) {
					Node stateNode = stateList.item(i);
					if (stateNode.getNodeName().equals("consumer")) {
						if (stateNode.getNodeType() == Node.ELEMENT_NODE) {
							Element elem = (Element) stateNode;
							for (int c=0; c<consumers.size(); c++) {
								if (consumers.get(c).GetGuid().toString().equals(elem.getAttribute("id"))) {
									//if the producer exists, append it to the currSteps list of stateObjs
									currStep.states.add(consumers.get(c).getState());
								}
							}
						}
						i++;
					} else if (stateNode.getNodeName().equals("producer")) {
							if (sNode.getNodeType() == Node.ELEMENT_NODE) {
								Element elem = (Element) stateNode;
								for (int p=0; p<producers.size(); p++) {
									if (producers.get(p).GetGuid().toString().equals(elem.getAttribute("id"))) {
										//if the producer exists, append it to the currSteps list of stateObjs
										currStep.states.add(producers.get(p).getState());
									}
								}
							}
							i++;
					} else if (stateNode.getNodeName().equals("transformer")) {
						if (sNode.getNodeType() == Node.ELEMENT_NODE) {
							Element elem = (Element) stateNode;
							for (int t=0; t<transformers.size(); t++) {
								if (producers.get(t).GetGuid().toString().equals(elem.getAttribute("id"))) {
									//if the producer exists, append it to the currSteps list of stateObjs
									currStep.states.add(transformers.get(t).getState());
								}
							}
						i++;
					} else if (stateNode.getNodeName().equals("grid")) {
						i++;
					} else {
						i++;
					}
					
				}
				//before moving to the new step append the currStep to steps				steps.add(currStep);
				idCount++;
				j=j+2;
			}
		   
			}
			} catch(Exception e) {
		   e.printStackTrace();
	   }	   

   }
   /** For testing purposes only, steps over all our step objects that contain lists of state objects
    * Use these two for loops for rendering
    * */
   public void print() {
	   for (Step step : steps) {
		   for (StateObject state : step.states) {
			   System.out.println("stateobject: "+state.name+" belongs to step #: "+step.id);
		   }
	   }
   }
   
	//inner class for one singular step object
	public class Step{
		public List <StateObject> states=new ArrayList<StateObject>();
		public int id;
	}

}