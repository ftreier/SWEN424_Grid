package nz.ac.victoria.swen424.gui;

import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import javax.imageio.ImageIO;
import javax.swing.*;

import nz.ac.victoria.swen424.mainTypes.ElConsumer;

public class gui extends JPanel {
   String[] type = { "Serif","SansSerif"}; 
   int[] styles = { Font.PLAIN, Font.ITALIC, Font.BOLD, Font.ITALIC + Font.BOLD };
   String[] stylenames = { "Plain", "Italic", "Bold", "Bold & Italic" };
   //Lists of objects to iterate over 
   ElConsumer c = new ElConsumer("test", 10, 20);
   ArrayList <ElConsumer> _consumers = new ArrayList <ElConsumer>();
   
   //Image files paths for each MainType
   private final String conImage = "/consumer.png";
   private final String tranImage = "/images/";
   private final String prodImage = "/images/";
   private final String gridImage = "/images/";
   
   public void paint(Graphics g) {
//      for (int f = 0; f < type.length; f++) { 
//         for (int s = 0; s < styles.length; s++) { 
//            Font font = new Font(type[f], styles[s], 18);
//            g.setFont(font); 
//            String name = type[f] + " " + stylenames[s];
//            g.drawString(name, 20, (f * 4 + s + 1) * 20); 
//         }
//      }
      //stuff to paint a consumer on the pane
	   File f = new File("consumer2.png");
	   Path currentRelativePath = Paths.get("");
	   String s = currentRelativePath.toAbsolutePath().toString();
	   System.out.println("Current relative path is: " + s);
	 
      BufferedImage img = null;
      try {
    	  System.out.println("trying to read image");
    	  System.out.println("wheres the image: "+s+conImage);
    	  	img = ImageIO.read(f);
    	  	System.out.println("reads image "+img.toString());
      } catch(IOException e) {
    	  	System.out.println(e);
      }
	   
	
      
//      int w = img.getWidth();
//      int h = img.getHeight();
//      BufferedImage bi = new
//          BufferedImage(w, h, BufferedImage.TYPE_INT_ARGB);
//      g = bi.getGraphics();
//      g.drawImage(img, 0, 0, null);
      
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
   }
}
