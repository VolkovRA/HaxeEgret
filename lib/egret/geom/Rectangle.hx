package egret.geom;

import egret.HashObject;

/**
 * A Rectangle object is an area defined by its position, as indicated by its top-left corner point (x, y) and by its
 * width and its height.
 * The x, y, width, and height properties of the Rectangle class are independent of each other; changing the value of
 * one property has no effect on the others. However, the right and bottom properties are integrally related to those
 * four properties. For example, if you change the value of the right property, the value of the width property changes;
 * if you change the bottom property, the value of the height property changes.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Rectangle")
extern class Rectangle extends HashObject 
{
	/**
	 * Creates a new Rectangle object with the top-left corner specified by the x and y parameters and with the specified
	 * width and height parameters.
	 * @param	x		The x coordinate of the top-left corner of the rectangle.
	 * @param	y		The y coordinate of the top-left corner of the rectangle.
	 * @param	width	The width of the rectangle, in pixels.
	 * @param	height	The height of the rectangle, in pixels.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(x:Float = 0, y:Float = 0, width:Float = 0, height:Float = 0);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Releases a rectangle instance to the object pool.
	 * @param	rect Rectangle.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function release(rect:Rectangle):Void;
	
	/**
	 * Get a rectangle instance from the object pool or create a new one.
	 * @return Rectangle
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function create():Rectangle;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The x coordinate of the top-left corner of the rectangle.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var x:Float;
	
	/**
	 * The y coordinate of the top-left corner of the rectangle.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var y:Float;
	
	/**
	 * The width of the rectangle, in pixels.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var width:Float;
	
	/**
	 * The height of the rectangle, in pixels.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var height:Float;
	
	/**
	 * The sum of the x and width properties.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var right:Float;
	
	/**
	 * The sum of the y and height properties.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bottom:Float;
	
	/**
	 * The x coordinate of the top-left corner of the rectangle.
	 * Changing the left property of a Rectangle object has no effect on the y and height properties.
	 * However it does affect the width property, whereas changing the x value does not affect the width property.
	 * The value of the left property is equal to the value of the x property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var left:Float;
	
	/**
	 * The y coordinate of the top-left corner of the rectangle.
	 * Changing the top property of a Rectangle object has no effect on the x and width properties.
	 * However it does affect the height property, whereas changing the y value does not affect the height property.
	 * The value of the top property is equal to the value of the y property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var top:Float;
	
	/**
	 * The location of the Rectangle object's top-left corner, determined by the x and y coordinates of the point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var topLeft:Float;
	
	/**
	 * The location of the Rectangle object's bottom-right corner, determined by the values of the right and bottom properties.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bottomRight:Float;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Copies all of rectangle data from the source Rectangle object into the calling Rectangle object.
	 * @param	source The Rectangle object from which to copy the data.
	 * @return	Current Rectangle.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function copyFrom(source:Rectangle):Rectangle;
	
	/**
	 * Sets the members of Rectangle to the specified values.
	 * @param	x		The x coordinate of the top-left corner of the rectangle.
	 * @param	y		The y coordinate of the top-left corner of the rectangle.
	 * @param	width	The width of the rectangle, in pixels.
	 * @param	height	The height of the rectangle, in pixels.
	 * @return	Current Rectangle.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function setTo(x:Float, y:Float, width:Float, height:Float):Rectangle;
	
	/**
	 * Determines whether the specified point is contained within the rectangular region defined by this Rectangle object.
	 * @param	x	The x coordinate (horizontal position) of the point.
	 * @param	y	The y coordinate (vertical position) of the point.
	 * @return	A value of true if the Rectangle object contains the specified point; otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function contains(x:Float, y:Float):Bool;
	
	/**
	 * If the Rectangle object specified in the toIntersect parameter intersects with this Rectangle object,
	 * returns the area of intersection as a Rectangle object.
	 * If the rectangles do not intersect, this method returns an empty Rectangle object with its properties set to 0.
	 * @param	intersect The Rectangle object to compare against to see if it intersects with this Rectangle object.
	 * @return	A Rectangle object that equals the area of intersection. If the rectangles do not intersect, this method
	 * 			returns an empty Rectangle object; that is, a rectangle with its x, y, width, and height properties set to 0.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function intersection(intersect:Rectangle):Rectangle;
	
	/**
	 * Increases the size of the Rectangle object by the specified amounts, in pixels.
	 * The center point of the Rectangle object stays the same, and its size increases to the left and right by the dx value,
	 * and to the top and the bottom by the dy value.
	 * @param	dx	The value to be added to the left and the right of the Rectangle object.
	 * @param	dy	The value to be added to the top and the bottom of the Rectangle.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function inflate(dx:Float, dy:Float):Void;
	
	/**
	 * Determines whether the object specified in the toIntersect parameter intersects with this Rectangle object.
	 * This method checks the x, y, width, and height properties of the specified Rectangle object to see if it
	 * intersects with this Rectangle object.
	 * @param	intersect	The Rectangle object to compare against this Rectangle object.
	 * @return	A value of true if the specified object intersects with this Rectangle object; otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function intersects(intersect:Rectangle):Bool;
	
	/**
	 * Determines whether or not this Rectangle object is empty.
	 * @return A value of true if the Rectangle object's width or height is less than or equal to 0; otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function isEmpty():Bool;
	
	/**
	 * Sets all of the Rectangle object's properties to 0.
	 * A Rectangle object is empty if its width or height is less than or equal to 0.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function setEmpty():Void;
	
	/**
	 * Returns a new Rectangle object with the same values for the x, y, width, and height properties as the original Rectangle object.
	 * @return	A new Rectangle object with the same values for the x, y, width, and height properties as the original Rectangle object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function clone():Rectangle;
	
	/**
	 * Determines whether the specified point is contained within the rectangular region defined by this Rectangle object.
	 * This method is similar to the Rectangle.contains() method, except that it takes a Point object as a parameter.
	 * @param	point The point, as represented by its x and y coordinates.
	 * @return	A value of true if the Rectangle object contains the specified point; otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function containsPoint(point:Point):Bool;
	
	/**
	 * Determines whether the Rectangle object specified by the rect parameter is contained within this Rectangle object.
	 * A Rectangle object is said to contain another if the second Rectangle object falls entirely within the boundaries of the first.
	 * @param	rect The Rectangle object being checked.
	 * @return	A value of true if the Rectangle object that you specify is contained by this Rectangle object; otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function containsRect(rect:Rectangle):Bool;
	
	/**
	 * Determines whether the object specified in the toCompare parameter is equal to this Rectangle object.
	 * This method compares the x, y, width, and height properties of an object against the same properties of this Rectangle object.
	 * @param	compare The rectangle to compare to this Rectangle object.
	 * @return	A value of true if the object has exactly the same values for the x, y, width, and height properties as this Rectangle object; otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function equals(compare:Rectangle):Bool;
	
	/**
	 * Increases the size of the Rectangle object.
	 * This method is similar to the Rectangle.inflate() method except it takes a Point object as a parameter.
	 * @param	point The x property of this Point object is used to increase the horizontal dimension of the Rectangle object.
	 * 					The y property is used to increase the vertical dimension of the Rectangle object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function inflatePoint(point:Point):Void;
	
	/**
	 * Adjusts the location of the Rectangle object, as determined by its top-left corner, by the specified amounts.
	 * @param	dx Moves the x value of the Rectangle object by this amount.
	 * @param	dy Moves the y value of the Rectangle object by this amount.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function offset(dx:Float, dy:Float):Void;
	
	/**
	 * Adjusts the location of the Rectangle object using a Point object as a parameter.
	 * This method is similar to the Rectangle.offset() method, except that it takes a Point object as a parameter.
	 * @param	point A Point object to use to offset this Rectangle object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function offsetPoint(point:Point):Void;
	
	/**
	 * Adds two rectangles together to create a new Rectangle object, by filling in the horizontal and vertical space between the two rectangles.
	 * @param	union A Rectangle object to add to this Rectangle object.
	 * @return	A new Rectangle object that is the union of the two rectangles.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function union(union:Rectangle):Rectangle;
	
	/**
	 * Builds and returns a string that lists the horizontal and vertical positions and the width and height of the Rectangle object.
	 * @return A string listing the value of each of the following properties of the Rectangle object: x, y, width, and height.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function toString():String;
}