package nz.ac.victoria.swen424.gui;

import java.awt.Color;
import java.awt.Component;
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
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

import nz.ac.victoria.swen424.gui.XMLParser.Step;
import nz.ac.victoria.swen424.mainTypes.ElProducer;
import nz.ac.victoria.swen424.mainTypes.StateObject;

/**
 * Window to render objects on. 
 * */
public class Window extends JPanel {
	private JFrame mainFrame;
	private JFrame footerFrame;
	private List <Step> steps;
	private int stepCount=0;
	private Component com;

	public Window() {
	}

	
	
	private void prepareWindow() {
		//setup the initial window
	     mainFrame = new JFrame("PowerGrid Simulation");   
	     //end the program when window is closed
	     mainFrame.addWindowListener(new WindowAdapter() {
	         public void windowClosing(WindowEvent windowEvent){
	            mainFrame.dispose();
	         }        
	      });
	             JPanel panel=new JPanel();  
	             panel.setBounds(0,685,1250,65);    
	             panel.setBackground(Color.gray);  
	             JButton stepButton=new JButton("Simulate Step");
	             stepButton.addActionListener(new ActionListener() {
	                 public void actionPerformed(ActionEvent e) {
	                    displayStep(steps.get(stepCount));
	                    if (stepCount==steps.size()-1) {
	                    		//make a popup to tell user they are at the end of simulation
	                    }
	                    mainFrame.setVisible(true);
	                 }
	              });
	             //stepButton.setBounds(10,100,80,20);    
	    	         //Component com = this.com;
	    	         //panel.add(com);
	     	        panel.add(stepButton);  
	     	        mainFrame.add(panel);  
	     	        mainFrame.setSize(1250,750);    
	     	        mainFrame.setLayout(null);    
	     	        mainFrame.setVisible(true); 
	}

	public void startSimulation(List <Step> steps) {
		this.steps = steps;
		prepareWindow();
	}

	private void displayStep(Step step) {	
		//add images to com
		//System.out.println("YAAAASS getting new step#: "+stepCount+" the first stateobj of this step is: "+step.states.get(0).name);
		StateObject test = step.states.get(stepCount);
		
		//the next time the button is pressed it'll be at the index of the next step
		stepCount++;
	}

}
