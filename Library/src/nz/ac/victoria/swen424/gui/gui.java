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

import nz.ac.victoria.swen424.mainTypes.ElConsumer;

public class gui extends JPanel {
   String[] type = { "Serif","SansSerif"}; 
   int[] styles = { Font.PLAIN, Font.ITALIC, Font.BOLD, Font.ITALIC + Font.BOLD };
   String[] stylenames = { "Plain", "Italic", "Bold", "Bold & Italic" };
   //Lists of objects to iterate over 

   ElConsumer c = new ElConsumer("test", 10, "tran", "usage");

   static ArrayList <ElConsumer> _consumers = new ArrayList <ElConsumer>();
   
   //Image files paths for each MainType
   private final String conImage = "/images/house.png";
   private final String tranImage = "/images/";
   private final String prodImage = "/images/";
   private final String gridImage = "/images/";
   
   public void paint(Graphics g) {
      //stuff to paint a consumer on the pane
	   BufferedImage img =null;
	   int x=0; 
	   int y=50;
	   
	   for (ElConsumer e : _consumers) {
		   try {
				img = ImageIO.read(new File(getClass().getResource(conImage).toURI()));
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
		      g.drawString(e.getData(), x+5, y+60);
	   }
	   
   }
   
   public static void main(String[] args) {
      JFrame f = new JFrame();
      f.addWindowListener(new WindowAdapter() {
         public void windowClosing(WindowEvent e) {
            System.exit(0);
         }
      });
      f.setContentPane(new gui());
      f.setSize(400,400);
      f.setVisible(true);
      //test consumers

      _consumers.add(new ElConsumer("test", 3, "tran", "usage"));
      _consumers.add(new ElConsumer("two", 4, "tran", "usage"));
      _consumers.add(new ElConsumer("anoth", 10, "tran", "usage"));

   }
}
