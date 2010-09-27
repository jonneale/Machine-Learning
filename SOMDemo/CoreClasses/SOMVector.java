/*
 * VariantVector.java
 *
 * Created on December 13, 2002, 1:49 PM
 */

package SOMDemo.CoreClasses;

import java.util.Vector;

/**
 *
 * @author  alanter
 */
public class SOMVector extends java.util.Vector {
	
	/** Creates a new instance of VariantVector */
	public SOMVector() {
	}
	
	/** Calculates the distance between this vector and
	 *  v2.  Returns -999 if the vectors so not contain the
	 *  same number of elements, otherwise returns the
	 *  square of the distance.
	 */
	public double euclideanDist(SOMVector v2) {
		if (v2.size() != size())
			return -999;
		
		double summation = 0, temp;
		for (int x=0; x<size(); x++) {
			temp = ((Double)elementAt(x)).doubleValue() -
				   ((Double)v2.elementAt(x)).doubleValue();
			temp *= temp;
			summation += temp;
		}
		
		return summation;
	}
	
}
