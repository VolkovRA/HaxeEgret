package egret.geom;

import egret.HashObject;

/**
 * The Point object represents a location in a two-dimensional coordinate system,
 * where x represents the horizontal axis and y represents the vertical axis.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Point")
extern class Point extends HashObject 
{
	/**
	 * Creates a new point.
	 * If you pass no parameters to this method, a point is created at (0,0).
	 * @param	x	The horizontal coordinate.
	 * @param	y	The vertical coordinate.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(x:Float = 0, y:Float = 0);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Releases a point instance to the object pool.
	 * @param	point	Point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function release(point:Point):Void;
	
	/**
	 * Get a point instance from the object pool or create a new one.
	 * @param	x	The horizontal coordinate.
	 * @param	y	The vertical coordinate.
	 * @return	Point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function create(x:Float, y:Float):Point;
	
	/**
	 * Returns the distance between pt1 and pt2.
	 * @param	p1	The first point.
	 * @param	p2	The second point.
	 * @return	The distance between the first and second points.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function distance(p1:Point, p2:Point):Float;
	
	/**
	 * Determines a point between two specified points.
     * The parameter f determines where the new interpolated point is located relative to the two end points specified
	 * by parameters pt1 and pt2. The closer the value of the parameter f is to 1.0, the closer the interpolated point
	 * is to the first point (parameter pt1). The closer the value of the parameter f is to 0, the closer the
	 * interpolated point is to the second point (parameter pt2).
	 * @param	p1	The first point.
	 * @param	p2	The second point.
	 * @param	f	The level of interpolation between the two points. Indicates where the new point will be,
	 * 				along the line between pt1 and pt2. If f=1, pt1 is returned; if f=0, pt2 is returned.
	 * @return	The new interpolated point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function interpolate(p1:Point, p2:Point, f:Float):Point;
	
	/**
	 * Converts a pair of polar coordinates to a Cartesian point coordinate.
	 * @param	len		The length coordinate of the polar pair.
	 * @param	angle	The angle, in radians, of the polar pair.
	 * @return	New Point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function polar(len:Float, angle:Float):Point;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The horizontal coordinate.
	 * @default 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var x:Float;
	
	/**
	 * The vertical coordinate.
	 * @default 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var y:Float;
	
	/**
	 * The length of the line segment from (0,0) to this point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var length(default, null):Float;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Sets the members of Point to the specified values.
	 * @param	x	The horizontal coordinate.
	 * @param	y	The vertical coordinate.
	 * @return	This Point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function setTo(x:Float, y:Float):Point;
	
	/**
	 * Creates a copy of this Point object.
	 * @return	New Point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function clone():Point;
	
	/**
	 * Determines whether two points are equal.
	 * Two points are equal if they have the same x and y values.
	 * @param	point The point to be compared.
	 * @return	A value of true if the object is equal to this Point object; false if it is not equal.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function equals(point:Point):Bool;
	
	/**
	 * Copies all of the point data from the source Point object into the calling Point object.
	 * @param	source	The Point object from which to copy the data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function copyFrom(source:Point):Void;
	
	/**
	 * Adds the coordinates of another point to the coordinates of this point to create a new point.
	 * @param	v The point to be added.
	 * @return	The new point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function add(v:Point):Point;
	
	/**
	 * Scales the line segment between (0,0) and the current point to a set length.
	 * @param	thickness The scaling value. For example, if the current point is (0,5),
	 * 			and you normalize it to 1, the point returned is at (0,1).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function normalize(thickness:Float):Void;
	
	/**
	 * Offsets the Point object by the specified amount.
	 * The value of dx is added to the original value of x to create the new x value.
	 * The value of dy is added to the original value of y to create the new y value.
	 * @param	dx	The amount by which to offset the horizontal coordinate, x.
	 * @param	dy	The amount by which to offset the vertical coordinate, y.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function offset(dx:Float, dy:Float):Void;
	
	/**
	 * Subtracts the coordinates of another point from the coordinates of this point to create a new point.
	 * @param	v The point to be subtracted.
	 * @return	The new point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function subtract(v:Point):Point;
	
	/**
	 * Returns a string that contains the values of the x and y coordinates.
	 * The string has the form "(x=x, y=y)", so calling the toString() method for a point at 23,17 would return "(x=23, y=17)".
	 * @return The string representation of the coordinates.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function toString():String;
}