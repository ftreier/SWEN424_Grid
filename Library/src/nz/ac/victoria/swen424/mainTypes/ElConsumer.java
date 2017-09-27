package nz.ac.victoria.swen424.mainTypes;

import java.awt.*;
import javax.swing.*;

public class ElConsumer implements IMainType{
	private String _name;
	private int _minConsumption;
	private int _maxConsumption;
	
	/**image to be displayed in the editor*/
	
public ElConsumer(String name, int minConsumption, int maxConsumption){
	_name = name;
	_minConsumption = minConsumption;
	_maxConsumption = maxConsumption;
	}


@Override
public void getData() {
	// TODO show the data related to the consumer
	// _name, _minConsumption & _maxConsumption
}

}
