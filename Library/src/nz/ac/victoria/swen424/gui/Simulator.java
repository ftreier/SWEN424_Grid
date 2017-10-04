package nz.ac.victoria.swen424.gui;

import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

import java.util.ArrayList;

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
   List _consumers = new List();
   static ArrayList <ElProducer> _producers = new ArrayList <ElProducer>();
   static ArrayList <ElTransformer> _transformers = new ArrayList <ElTransformer>();
   static ArrayList <ElGrid> _grids = new ArrayList <ElGrid>();
   
   //Image files paths for each MainType
   private final String conImage = "/imports/house.png";
   private final String tranImage = "/images/";
   private final String prodImage = "/images/";
   private final String gridImage = "/images/";
   
   public Simulator() {
	   
   }
   
   public static void main(String[] args) {
	   readModelDefinition();
   }
   
   public final void parseModelDefinition(List consumers) {
	   _consumers = consumers;
   }
   
   /**
    * parses over model definition portion of xml file
    * creates lists of objects for rendering
    * @param null 
    * @return null
    * Note: Take "static" out for PowerGridSimulator to be able to call this method
    * */
   public static final void readModelDefinition () {
	   try {
		   File inputXML = new File("outputXML.txt");
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
