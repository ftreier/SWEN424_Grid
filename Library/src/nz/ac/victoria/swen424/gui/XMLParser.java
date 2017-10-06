package nz.ac.victoria.swen424.gui;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import nz.ac.victoria.swen424.gui.XMLParser.Step;
import nz.ac.victoria.swen424.mainTypes.ElConsumer;
import nz.ac.victoria.swen424.mainTypes.ElGrid;
import nz.ac.victoria.swen424.mainTypes.ElProducer;
import nz.ac.victoria.swen424.mainTypes.ElTransformer;
import nz.ac.victoria.swen424.mainTypes.StateObject;

public class XMLParser {
	   
	   //Image files paths for each MainType
	   private final String conImage = "/images/house.png";
	   private final String tranImage = "/images/";
	   private final String prodImage = "/images/powerplant.png";
	   private final String gridImage = "/images/";

	   
	   // Array to save initial stepobjects in
	   List <Step> steps = new ArrayList<Step>();
	   List <ElConsumer> consumers;
	   List <ElProducer> producers;
	   List <ElTransformer> transformers;
	   List <ElGrid> grids;
	   
	  
	   public final void initialiseStates(List<ElProducer> producers, List<ElConsumer> consumers, 
			   								List<ElTransformer> transformers, List <ElGrid> grids) {
		   this.consumers = consumers;
		   this.producers = producers;
		   this.transformers = transformers;
		   this.grids = grids;
		   
		   //initial static step should store states from lists at rest ie. not simulating yet
		   // create StateObjects and append them to the 
		   Step initialStep = new Step();
		   initialStep.id = 0;
		   
		   //create stateobjs for producers
		   for (ElProducer p : producers) {
			   initialStep.states.add(p.getState());
		   }
		 //create stateobjs for consumers
		   for (ElConsumer c : consumers) {
			   initialStep.states.add(c.getState());
		   }
		 //create stateobjs for transformers
		   for (ElTransformer t : transformers) {
			   initialStep.states.add(t.getState());
		   }
		 //create stateobjs for grids
		   for (ElGrid g : grids) {
			   initialStep.states.add(g.getState());
		   }
		   steps.add(initialStep);
		   parseXMLSteps();
	   }
	   
	   
	   private void parseXMLSteps() {
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
								StateObject state = new StateObject();
								for (int c=0; c<consumers.size(); c++) {
									if (consumers.get(c).GetGuid().toString().equals(elem.getAttribute("id"))) {
										state = consumers.get(c).getState();
										state.prodcon = elem.getAttribute("consumption");
										state.max = elem.getAttribute("maxConsumption");
										state.usage = elem.getAttribute("usage");
										currStep.states.add(state);
									}
								}
							}
							i++;
						} else if (stateNode.getNodeName().equals("producer")) {
								if (sNode.getNodeType() == Node.ELEMENT_NODE) {
									Element elem = (Element) stateNode;
									StateObject state = new StateObject();
									for (int p=0; p<producers.size(); p++) {
										if (producers.get(p).GetGuid().toString().equals(elem.getAttribute("id"))) {
											state = producers.get(p).getState();
											state.prodcon = elem.getAttribute("production");
											if (elem.getAttribute("used") != null)
												state.usage = elem.getAttribute("used");
											state.max = elem.getAttribute("maxProduction");
											if (elem.getAttribute("minProduction") != null)
												state.min = elem.getAttribute("minProduction");
											currStep.states.add(state);
										}
									}
								}
								i++;
						} else if (stateNode.getNodeName().equals("transformer")) {
							if (sNode.getNodeType() == Node.ELEMENT_NODE) {
								Element elem = (Element) stateNode;
								StateObject state = new StateObject();
								for (int t=0; t<transformers.size(); t++) {
									if (transformers.get(t).GetGuid().toString().equals(elem.getAttribute("id"))) {
										state = transformers.get(t).getState();
										state.max = elem.getAttribute("maxCapacity");
										state.usage = elem.getAttribute("usage");
										state.currentUsage = elem.getAttribute("currentUsage");
										state.loss = elem.getAttribute("loss");
										if (elem.getAttribute("isOk").equals("true")) {state.isOK=true;}
										else {state.isOK=false;}
										currStep.states.add(state);
									}
								}
								}
							i++;
						} else if (stateNode.getNodeName().equals("grid")) {
							if (sNode.getNodeType() == Node.ELEMENT_NODE) {
								Element elem = (Element) stateNode;
								StateObject state = new StateObject();
								for (int g=0; g<grids.size(); g++) {
									if (grids.get(g).GetGuid().toString().equals(elem.getAttribute("id"))) {
										state = grids.get(g).getState();
										state.currentUsage = elem.getAttribute("currentUsage");
										if (elem.getAttribute("isOk").equals("true")) {
											state.isOK=true; 
											state.isFailure=false;
										} else {
											state.isOK=false;
											state.isFailure=true;
										}
										state.usage = elem.getAttribute("usage");
										state.loss = elem.getAttribute("loss");
										state.max = elem.getAttribute("maxCapacity");
										currStep.states.add(state);
									}
								}
							}
							i++;
						} else {
							i++;
						}
						
					}
					//before moving to the new step append the currStep to steps				
					steps.add(currStep);
					idCount++;
					j=j+2;
				}
			   
				} catch(Exception e) {
			   e.printStackTrace();
		   }	
		   this.print();	
	}




	/** For testing purposes only, steps over all our step objects that contain lists of state objects
	    * Use these two for loops for rendering
	    * 
	    * */
	   public void print() {
		   for (Step step : steps) {
			   for (StateObject state : step.states) {
				   String type = state.getClassType();
				   if (type.equals("ElTransformer")) {
					   //DO TRANSFORMER
				   } else if (type.equals("ElGrid")) {
					   //DO GRID
				   } else if (type.equals("ElProducer")) {
					   //DO PRODUCER
				   } else if (type.equals("ElConsumer")) {
					   //DO CONSUMER
				   }
			   }
		   }
	   }
	   
		//inner class for one singular step object
		public class Step{
			public List <StateObject> states=new ArrayList<StateObject>();
			public int id;
		}
}

