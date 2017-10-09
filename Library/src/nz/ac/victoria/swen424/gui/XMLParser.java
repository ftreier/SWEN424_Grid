package nz.ac.victoria.swen424.gui;


import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.Timer;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import nz.ac.victoria.swen424.mainTypes.ElConsumer;
import nz.ac.victoria.swen424.mainTypes.ElGrid;
import nz.ac.victoria.swen424.mainTypes.ElProducer;
import nz.ac.victoria.swen424.mainTypes.ElTransformer;
import nz.ac.victoria.swen424.mainTypes.MainBaseType;
import nz.ac.victoria.swen424.mainTypes.StateObject;

public class XMLParser {   
	   // Array to save initial stepobjects in
	   static List <Step> steps = new ArrayList<Step>();
	   
	   // Arrays of MainBaseTypes passed in by PowerGridSimulator
	   List <ElConsumer> consumers;
	   List <ElProducer> producers;
	   List <ElTransformer> transformers;
	   List <ElGrid> grids;
	   
	   private static int windowWidth = 1275;
	   private static int windowHeight = 1000;
	   
	   //Window object to display our simulation
	   Window w;
	   
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
		   
		   // holder stateobject
		   StateObject toBeAdded;
		   
		   //logic for where and how objects are drawn
		   int maxProdCon = 0;
		   
		   //get the largest number of consumers/producers attached to a singular transformer
		   for (ElTransformer tran : transformers) {
			   if (maxProdCon < (tran.getLeftConnections().size())) 
				   maxProdCon = tran.getLeftConnections().size();
		   }
		   
		   //rendering #'s for grids
		   int numGrids = grids.size();
		   int numTrans = transformers.size();
		   int numProdCons = consumers.size()+producers.size();
		   //rendering #'s for transformers
		   int gridSpace = windowHeight/(grids.size()+1);
		   System.out.println("Have gridSize: "+gridSpace);
		   int initialY = 50;
		   int imgSize = 30;
		   int gridX = windowWidth/2;
		   int tranSpace = windowHeight/(transformers.size()+1);
		   boolean leftSideTran=true;
		   int leftTranX=gridX/2;
		   int rightTranX=gridX+leftTranX;
		   //rendering #'s for prodcons
		   int leftProdConX = (leftTranX/2);
		   int rightProdConX = rightTranX+(leftProdConX);
		   
		   
		   //create stateobjs for grids
		   for (ElGrid g : grids) {
			   toBeAdded = g.getState();
			   toBeAdded.imgPath = "/images/powergrid.png";
			 //assign x, y and size
			   int y = initialY;
			   g.setRender(gridX, y, imgSize);
			   initialY = (initialY+(gridSpace-imgSize));
			   toBeAdded.x = g.getX();
			   toBeAdded.y = g.getY();
			   toBeAdded.size = g.getSize();
			   initialStep.states.add(toBeAdded);
		   }
		   
		   initialY=50;
		   int pcimg = 20;
			 //create stateobjs for transformers
		   for (ElTransformer t : transformers) {
			   toBeAdded = t.getState();
			   toBeAdded.imgPath = "/images/transformer/png";
			 //assign x, y and size
			   int y = initialY;
			   if (leftSideTran) {
				   t.setRender(leftTranX, y, imgSize);
				   int pcY = y;
				   for (int pc=0; pc < t.getLeftConnections().size(); pc++) {
					   MainBaseType prodcon = t.getLeftConnections().get(pc);
					   if (pcY >= t.getY()+tranSpace) {
						   leftProdConX = leftProdConX - (3*pcimg);
						   pcY = y;
					   }
					   if (pcY < 0 || pcY > windowHeight  || rightProdConX < 0) {throw new Error();}
						   prodcon.setRender(leftProdConX, pcY, pcimg);
						   pcY = pcY + (pcimg*3);
				   }
				   initialY = (initialY+(tranSpace-(imgSize)));
				   leftSideTran=false;
			   } 
			   else {
				   t.setRender(rightTranX, y, imgSize);
				   int pcY = y;
				   for (int pc=0; pc < t.getLeftConnections().size(); pc++) {
					   MainBaseType prodcon = t.getLeftConnections().get(pc);
					   if (pcY >= t.getY()+tranSpace) {
						   rightProdConX = rightProdConX + (3*pcimg);
						   pcY = y;
					   }
					   if (pcY < 0 || pcY > windowHeight || rightProdConX >= windowWidth) {throw new Error();}
						   prodcon.setRender(rightProdConX, pcY, pcimg);
						   pcY = pcY + (pcimg*3);
				   }
				   
				   initialY = (initialY+(tranSpace-imgSize));
				   leftSideTran=true;
			   }
			   toBeAdded.x=t.getX();
			   toBeAdded.y=t.getY();
			   toBeAdded.size=t.getSize();
			   initialStep.states.add(toBeAdded);
			   
		   }
		   //create stateobjs for producers
		   for (ElProducer p : producers) {
			   toBeAdded = p.getState();
			   toBeAdded.imgPath = "/images/powerplant.png";
			   //assign x, y and size
			   toBeAdded.x = p.getX();
			   toBeAdded.y = p.getY();
			   toBeAdded.size = p.getSize();
			   initialStep.states.add(toBeAdded);
		   }
		 //create stateobjs for consumers
		   for (ElConsumer c : consumers) {
			   toBeAdded = c.getState();
			   toBeAdded.imgPath = "/images/house.png";
			 //assign x, y and size
			   toBeAdded.x = c.getX();
			   toBeAdded.y = c.getY();
			   toBeAdded.size = c.getSize();
			   initialStep.states.add(toBeAdded);
		   }
		   steps.add(initialStep);
		   parseXMLSteps();
	   }
	   
	   
	   private void parseXMLSteps() {
		   // try extract producers from _producers list based on ID# parsed in XML
		   try {
			   File file = new File("output.xml");
					   
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
					if (sNode.getNodeType() == Node.ELEMENT_NODE) {
						Element elem = (Element) sNode;
						currStep.number = elem.getAttribute("number");
						currStep.overallLoss = elem.getAttribute("overallLoss");
						currStep.currentConsumption = elem.getAttribute("currentConsumption");
					}
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
										state.imgPath = "/images/house.png";
										state.x = consumers.get(c).getX();
										state.y = consumers.get(c).getY();
										state.size = consumers.get(c).getSize();
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
											state.imgPath = "/images/powerplant.png";
											state.x = producers.get(p).getX();
											state.y = producers.get(p).getY();
											state.size = producers.get(p).getSize();
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
										state.imgPath = "/images/transformer.png";
										state.x=transformers.get(t).getX();
										state.y=transformers.get(t).getY();
										state.size=transformers.get(t).getSize();
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
										state.imgPath = "/images/powergrid.png";
										state.x = grids.get(g).getX();
										state.y = grids.get(g).getY();
										state.size = grids.get(g).getSize();
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
		  w = new Window(steps);
		  
	}
	   
		//inner class for one singular step object
		public class Step{
			public List <StateObject> states=new ArrayList<StateObject>();
			public int id;
			public String number;
			public String overallLoss;
			public String currentConsumption;
		}
		
		// inner class for rendering?? 
		public static class Window extends JFrame{
			JFrame mainFrame;
			static int stepCount = 1;
			public Window(List<Step>_steps) {
				List <Step> steps = _steps;
				mainFrame = new JFrame("PowerGrid Simulation");
				mainFrame.addWindowListener(new WindowAdapter() {
					          public void windowClosing(WindowEvent e) {
					            System.exit(0);
					          }
					      });
				mainFrame.add(new Show());
				Timer timer = new Timer(2000, new ActionListener() {
					@Override
					public void actionPerformed(ActionEvent e) {
						System.out.println("Is this even happening tho");
						stepCount++;
						if (stepCount >= steps.size()) {
							mainFrame.add(new EndShow());
							mainFrame.setVisible(true);
						}else {
							mainFrame.add(new Show());
							mainFrame.setVisible(true);
						}
					}}); timer.start();
				mainFrame.setSize(1500, 750);
				mainFrame.setVisible(true);
			}
			
			public static List<Step> getSteps(){
				return steps;
			}
			
			public static Step getStep() {
				return steps.get(stepCount);
			}
		}
		
		public static class EndShow extends JPanel {
			public void paint (Graphics g) {
				g.clearRect(0, 0, XMLParser.windowWidth, XMLParser.windowHeight);
				g.setColor(Color.BLUE);
				g.drawString("End of Simulation.", 500, 500);
			}
		}
		
		//inner class to display
		public static class Show extends JPanel {
			
			public void paint(Graphics g) {
				//List <Step> _steps = Window.getSteps();
				Step step = Window.getStep();
				g.clearRect(0, 0, XMLParser.windowWidth, XMLParser.windowHeight);
				
				//First step to draw
				List <StateObject> currStates = step.states;
				BufferedImage img = null;
				
				for (int i=0; i<currStates.size(); i++) {
					g.setColor(Color.BLUE);
					g.drawString("Step #: "+step.number+" Current Consumption: "+step.currentConsumption+" Overall Loss: "+step.overallLoss, 100, 700);
					StateObject toDraw = currStates.get(i);
					if (toDraw.getClassType().equals("ElGrid")) {
						try {
							img = ImageIO.read(new File(getClass().getResource(toDraw.imgPath).toURI()));
						}catch (IOException e1) {
							e1.printStackTrace();
						} catch (URISyntaxException e1) {
							e1.printStackTrace();
						}
						g.drawImage(img, toDraw.x, toDraw.y, toDraw.size, toDraw.size, null);
						g.setColor(Color.BLACK);
						g.drawString(toDraw.name, toDraw.x, (toDraw.y+(toDraw.size+(toDraw.size/2))));
						g.setColor(Color.darkGray);
						//connect a line to the left transformer
						g.drawLine(toDraw.x, toDraw.y, toDraw.type.getLeftTransformer().getX(), toDraw.type.getLeftTransformer().getY());
						//connect a line to the right transformer
						g.drawLine(toDraw.x, toDraw.y, toDraw.type.getRightTransformer().getX(), toDraw.type.getRightTransformer().getY());
						if (toDraw.isOK) {g.setColor(Color.GREEN);}
						else {g.setColor(Color.RED);}
						g.drawString("usage:"+toDraw.currentUsage, toDraw.x, (toDraw.y+(toDraw.size+(toDraw.size))));
					} else if (toDraw.getClassType().equals("ElTransformer")) {
						try {
							img = ImageIO.read(new File(getClass().getResource(toDraw.imgPath).toURI()));
						}catch (IOException e1) {
							e1.printStackTrace();
						} catch (URISyntaxException e1) {
							e1.printStackTrace();
						}
						g.drawImage(img, toDraw.x, toDraw.y, toDraw.size, toDraw.size, null);
						g.setColor(Color.BLACK);
						g.drawString(toDraw.name, toDraw.x, (toDraw.y+(toDraw.size+(toDraw.size/2))));
						if (toDraw.isOK) {g.setColor(Color.GREEN);}
						else {g.setColor(Color.RED);}
						g.drawString("usage:"+toDraw.currentUsage, toDraw.x, (toDraw.y+(toDraw.size+(toDraw.size))));
					} else {
						//draw the producers and consumers
						try {
							img = ImageIO.read(new File(getClass().getResource(toDraw.imgPath).toURI()));
						}catch (IOException e1) {
							e1.printStackTrace();
						} catch (URISyntaxException e1) {
							e1.printStackTrace();
						}
						g.drawImage(img, toDraw.x, toDraw.y, toDraw.size, toDraw.size, null);
						g.setColor(Color.BLACK);
						g.drawString(toDraw.name, toDraw.x, (toDraw.y+(toDraw.size+(toDraw.size/2))));
						if (toDraw.currentUsage != null)
							g.drawString(toDraw.currentUsage, toDraw.x, (toDraw.y+(toDraw.size+(toDraw.size))));
						g.drawLine(toDraw.x, toDraw.y, toDraw.type.getLeftTransformer().getX(), toDraw.type.getLeftTransformer().getY());
					}
				
				}
			}
			
		}
}

