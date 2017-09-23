package nz.ac.victoria.swen424;

import java.awt.Image;

public class ElConsumer {
	private String _name;
	private int _minProduction;
	private int _maxProduction;
	
	/**image to be displayed in the editor*/
	private Image image;
	
public ElConsumer(String name, int minProduction, int maxProduction){
	_name = name;
	_minProduction = minProduction;
	_maxProduction = maxProduction;
	}
}
