package com.afroz;

public class Box {
	private double width;
	private double height;

	public double getWidth() {
		return width;
	}

	public void setWidth(double width) {
		this.width = width;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}
	
	/**
     * This is the function that is called by the Expression Language processor.  It must be static.
     * 
     */
	public static double perimeter(double width, double height){
		return 2*width+2*height;
	}
}
