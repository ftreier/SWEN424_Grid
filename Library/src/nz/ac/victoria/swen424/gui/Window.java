package nz.ac.victoria.swen424.gui;

import java.awt.Color;
import java.awt.Component;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

import nz.ac.victoria.swen424.mainTypes.ElProducer;

/**
 * Contains all objects
 * */
public class Window extends JPanel {
	public static Component com;
	private List <ElProducer> producer;
	private final String prodImage = "/images/powerplant.png";
	
	public void displaySimulation() {
	       JFrame f= new JFrame("PowerGrid Simulation");    
	        JPanel panel=new JPanel();  
	        panel.setBounds(0,700,1250,50);    
	        panel.setBackground(Color.gray);  
	        JButton b1=new JButton("Start");
	        //set this to be a nicer layout
	        b1.setBounds(10,100,80,30);    
	        b1.setBackground(Color.yellow);
	        Component com = this.com;
	        panel.add(com);
	        panel.add(b1);  
	        f.add(panel);  
	                f.setSize(1250,750);    
	                f.setLayout(null);    
	                f.setVisible(true); 
	}
	
  public void paint(Graphics g) {
  //stuff to paint a consumer on the pane
   BufferedImage img =null;
   int x=0; 
   int y=50;
   
   for (ElProducer p : producer) {
	   try {
			img = ImageIO.read(new File(getClass().getResource(prodImage).toURI()));
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (URISyntaxException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		   //drawimage(img, x, y, width, height, null)
	   	  x = x+100;
	      g.drawImage(img, x, y, 50, 50, null); 
	      //g.drawString(e.getData(), x+5, y+60);
   }
   
}
	

}
