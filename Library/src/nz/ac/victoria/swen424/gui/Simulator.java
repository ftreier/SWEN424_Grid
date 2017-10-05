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

public class Simulator extends JPanel {
   List <ElConsumer>_consumers = new LinkedList<ElConsumer>();
   List <ElProducer> _producers = new LinkedList <ElProducer>();
   //static ArrayList <ElTransformer> _transformers = new ArrayList <ElTransformer>();
   //static ArrayList <ElGrid> _grids = new ArrayList <ElGrid>();
   List <Step> _steps = new ArrayList<Step>();
   
   //Image files paths for each MainType
   private final String conImage = "/images/house.png";
   private final String tranImage = "/images/";
   private final String prodImage = "/images/";
   private final String gridImage = "/images/";
   
   public Simulator() {
	   
   }
   
   public static void main(String[] args) {
	   //readModelDefinition();
   }
   
   public final void parseSimulationXML(List<ElProducer> producers) {
	   _producers = producers;
	   
	   // try extract producers from _producers list based on ID# parsed in XML
	   try {
		   //TimeUnit.SECONDS.sleep(10);
		   //URL url = Simulator.class.getResource("output.xml");
		   //File file = Paths.get(url.toURI()).toFile();
		  
		   //File file = new File(url.getPath());
		   
		   File file = new File("/Users/koe/Desktop/SWEN424_Grid/output.xml");
				   
		   DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		   DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		   Document doc = dBuilder.parse(file);
		   doc.getDocumentElement().normalize();
		   System.out.println("Root element: "+doc.getDocumentElement().getNodeName()); 
		   
		   NodeList _modList = doc.getElementsByTagName("modelDefinition");
		   int i=0;
		   while (i<_modList.getLength()){
			//there is only one modelDefinition that contains lists of elements 
			Node mNode = _modList.item(i);
			//there are child nodes whcih are our lists of elements
			NodeList defList = mNode.getChildNodes();
			int j=0;
			while (j < defList.getLength()) {
				Node dNode = defList.item(j);
				if (dNode.getNodeName().equals("consumer")) {
					if (dNode.getNodeType() == Node.ELEMENT_NODE) {
						Element elem = (Element) dNode;
						System.out.println("Consumer: "+elem.getAttribute("name"));
					}
					j++;
				} else if (dNode.getNodeName().equals("producer")) {
					System.out.println("Deal with: "+dNode.getNodeName());
						if (dNode.getNodeType() == Node.ELEMENT_NODE) {
							Element elem = (Element) dNode;
							System.out.println("Producer: "+elem.getAttribute("id"));
							for (int p=0; p<_producers.size(); p++) {
								if (_producers.get(p).GetGuid().toString().equals(elem.getAttribute("id"))) {
									System.out.println("Made it.");
									System.out.println("From the list: "+_producers.get(p).GetGuid());
								}
							}
						}
					j++;
				} else if (dNode.getNodeName().equals("transformator")) {
					System.out.println("Deal with: "+dNode.getNodeName());
					j++;
				} else if (dNode.getNodeName().equals("grid")) {
					System.out.println("Deal with: "+dNode.getNodeName());
					j++;
				} else if (dNode.getNodeName().equals("weather")) {
					System.out.println("Deal with: "+dNode.getNodeName());
					j++;
				} else {
					j++;
				}
			}
			   i++;
		   }
		   
	   } catch(Exception e) {
		   e.printStackTrace();
	   }
   }
   
   /**
    * parses over model definition portion of xml file
    * creates lists of objects for rendering
    * @param null 
    * @return null
    * Note: Take "static" out for PowerGridSimulator to be able to call this method
    * */
   public final void readModelDefinition () {
	   try {
		   File inputXML = new File(getClass().getResource("output.xml").toURI());
		   DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		   DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		   Document doc = dBuilder.parse(inputXML);
		   doc.getDocumentElement().normalize();
		   System.out.println("Root element: "+doc.getDocumentElement().getNodeName()); 
		   
		   NodeList _modList = doc.getElementsByTagName("modelDefinition");
		   int i=0;
		   while (i<_modList.getLength()){
			//there is only one modelDefinition that contains lists of elements 
			Node mNode = _modList.item(i);
			//there are child nodes whcih are our lists of elements
			NodeList defList = mNode.getChildNodes();
			int j=0;
			while (j < defList.getLength()) {
				Node dNode = defList.item(j);
				if (dNode.getNodeName().equals("consumer")) {
					if (dNode.getNodeType() == Node.ELEMENT_NODE) {
						Element elem = (Element) dNode;
						System.out.println("Consumer: "+elem.getAttribute("name"));
					}
					j++;
				} else if (dNode.getNodeName().equals("producer")) {
					System.out.println("Deal with: "+dNode.getNodeName());
					j++;
				} else if (dNode.getNodeName().equals("transformator")) {
					System.out.println("Deal with: "+dNode.getNodeName());
					j++;
				} else if (dNode.getNodeName().equals("grid")) {
					System.out.println("Deal with: "+dNode.getNodeName());
					j++;
				} else if (dNode.getNodeName().equals("weather")) {
					System.out.println("Deal with: "+dNode.getNodeName());
					j++;
				} else {
					j++;
				}
			}
			   i++;
		   }
		   
	   } catch(Exception e) {
		   e.printStackTrace();
	   }
	   
   }
//   public void paint(Graphics g) {
//      //stuff to paint a consumer on the pane
//	   BufferedImage img =null;
//	   int x=0; 
//	   int y=50;
//	   
//	   for (ElConsumer e : _consumers) {
//		   try {
//				img = ImageIO.read(new File(getClass().getResource(conImage).toURI()));
//			} catch (IOException e1) {
//				// TODO Auto-generated catch block
//				e1.printStackTrace();
//			} catch (URISyntaxException e1) {
//				// TODO Auto-generated catch block
//				e1.printStackTrace();
//			}
//			   //drawimage(img, x, y, width, height, null)
//		   	  x = x+100;
//		      g.drawImage(img, x, y, 50, 50, null); 
//		      //g.drawString(e.getData(), x+5, y+60);
//	   }
//	   
//   }
//   
//   public static void main(String[] args) {
//      JFrame f = new JFrame();
//      f.addWindowListener(new WindowAdapter() {
//         public void windowClosing(WindowEvent e) {
//            System.exit(0);
//         }
//      });
//      f.setContentPane(new Simulator());
//      f.setSize(400,400);
//      f.setVisible(true);
//      //test consumers
//      _consumers.add(new ElConsumer("test", 3, 5));
//      _consumers.add(new ElConsumer("two", 4, 9));
//      _consumers.add(new ElConsumer("anoth", 10, 20));
//   }
}
