package egret.geom;

import egret.HashObject;

/**
 * The Matrix class represents a transformation matrix that determines how to map points from one coordinate space to
 * another. You can perform various graphical transformations on a display object by setting the properties of a Matrix
 * object, applying that Matrix object to the matrix property of a display object, These transformation functions include
 * translation (x and y repositioning), rotation, scaling, and skewing.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Matrix")
extern class Matrix extends HashObject 
{
	/**
	 * Creates a new Matrix object with the specified parameters.
	 * @param	a	The value that affects the positioning of pixels along the x axis when scaling or rotating an image.
	 * @param	b	The value that affects the positioning of pixels along the y axis when rotating or skewing an image.
	 * @param	c	The value that affects the positioning of pixels along the x axis when rotating or skewing an image.
	 * @param	d	The value that affects the positioning of pixels along the y axis when scaling or rotating an image.
	 * @param	tx	The distance by which to translate each point along the x axis.
	 * @param	ty	The distance by which to translate each point along the y axis.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(a:Float = 1, b:Float = 0, c:Float = 0, d:Float = 1, tx:Float = 0, ty:Float = 0);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Releases a matrix instance to the object pool.
	 * @param	matrix Matrix that Needs to be recycled.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function release(matrix:Matrix):Void;
	
	/**
	 * Get a matrix instance from the object pool or create a new one.
	 * @return Matrix instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function create():Matrix;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The value that affects the positioning of pixels along the x axis when scaling or rotating an image.
	 * @default 1
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var a:Float;
	
	/**
	 * The value that affects the positioning of pixels along the y axis when rotating or skewing an image.
	 * @default 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var b:Float;
	
	/**
	 * The value that affects the positioning of pixels along the x axis when rotating or skewing an image.
	 * @default 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var c:Float;
	
	/**
	 * The value that affects the positioning of pixels along the y axis when scaling or rotating an image.
	 * @default 1
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var d:Float;
	
	/**
	 * The distance by which to translate each point along the x axis.
	 * @default 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var tx:Float;
	
	/**
	 * The distance by which to translate each point along the y axis.
	 * @default 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var ty:Float;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Returns a new Matrix object that is a clone of this matrix, with an exact copy of the contained object.
	 * @return New Matrix object
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function clone():Matrix;
	
	/**
	 * Concatenates a matrix with the current matrix, effectively combining the geometric effects of the two.
	 * In mathematical terms, concatenating two matrixes is the same as combining them using matrix multiplication.
	 * @param	other The matrix to be concatenated to the source matrix.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function concat(other:Matrix):Void;
	
	/**
	 * Copies all of the matrix data from the source Point object into the calling Matrix object.
	 * @param	other The Matrix object from which to copy the data.
	 * @return	Current Matrix.
	 */
	public function copyFrom(other:Matrix):Matrix;
	
	/**
	 * Sets each matrix property to a value that causes a null transformation.
	 * An object transformed by applying an identity matrix will be identical to the original. After calling the identity() method,
	 * the resulting matrix has the following properties: a=1, b=0, c=0, d=1, tx=0, ty=0.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function identity():Void;
	
	/**
	 * Performs the opposite transformation of the original matrix.
	 * You can apply an inverted matrix to an object to undo the transformation performed when applying the original matrix.
	 * @version Egret 2.4
	 * @platform Web,Native 
	 */
	public function invert():Void;
	
	/**
	 * Applies a rotation transformation to the Matrix object.
	 * The rotate() method alters the a, b, c, and d properties of the Matrix object.
	 * @param	angle The rotation angle in radians.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function rotate(angle:Float):Void;
	
	/**
	 * Applies a scaling transformation to the matrix.
	 * The x axis is multiplied by sx, and the y axis it is multiplied by sy.
	 * The scale() method alters the a and d properties of the Matrix object.
	 * @param	sx	A multiplier used to scale the object along the x axis.
	 * @param	sy	A multiplier used to scale the object along the y axis.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function scale(sx:Float, sy:Float):Void;
	
	/**
	 * Sets the members of Matrix to the specified values.
	 * @param	a	The value that affects the positioning of pixels along the x axis when scaling or rotating an image.
	 * @param	b	The value that affects the positioning of pixels along the y axis when rotating or skewing an image.
	 * @param	c	The value that affects the positioning of pixels along the x axis when rotating or skewing an image.
	 * @param	d	The value that affects the positioning of pixels along the y axis when scaling or rotating an image.
	 * @param	tx	The distance by which to translate each point along the x axis.
	 * @param	ty	The distance by which to translate each point along the y axis.
	 * @return	Current Matrix.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function setTo(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix;
	
	/**
	 * Returns the result of applying the geometric transformation represented by the Matrix object to the specified point.
	 * @param	pointX	The x coordinate for which you want to get the result of the Matrix transformation.
	 * @param	pointY	The y coordinate for which you want to get the result of the Matrix transformation.
	 * @param	result	A reusable instance of Point for saving the results. Passing this parameter can reduce
	 * 			the number of reallocate objects, which allows you to get better code execution performance.
	 * @return	The point resulting from applying the Matrix transformation.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function transformPoint(pointX:Float, pointY:Float, ?result:Point):Point;
	
	/**
	 * Translates the matrix along the x and y axes, as specified by the dx and dy parameters.
	 * @param	dx	The amount of movement along the x axis to the right, in pixels.
	 * @param	dy	The amount of movement down along the y axis, in pixels.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function translate(dx:Float, dy:Float):Void;
	
	/**
	 * Determines whether two matrixes are equal.
	 * @param	other The matrix to be compared.
	 * @return	A value of true if the object is equal to this Matrix object; false if it is not equal.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function equals(other:Matrix):Bool;
	
	/**
	 * Prepend matrix.
	 * @param	a	The value that affects the positioning of pixels along the x axis when scaling or rotating an image.
	 * @param	b	The value that affects the positioning of pixels along the y axis when rotating or skewing an image.
	 * @param	c	The value that affects the positioning of pixels along the x axis when rotating or skewing an image.
	 * @param	d	The value that affects the positioning of pixels along the y axis when scaling or rotating an image.
	 * @param	tx	The distance by which to translate each point along the x axis.
	 * @param	ty	The distance by which to translate each point along the y axis.
	 * @return	Matrix.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function prepend(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix;
	
	/**
	 * Append matrix.
	 * @param	a	The value that affects the positioning of pixels along the x axis when scaling or rotating an image.
	 * @param	b	The value that affects the positioning of pixels along the y axis when rotating or skewing an image.
	 * @param	c	The value that affects the positioning of pixels along the x axis when rotating or skewing an image.
	 * @param	d	The value that affects the positioning of pixels along the y axis when scaling or rotating an image.
	 * @param	tx	The distance by which to translate each point along the x axis.
	 * @param	ty	The distance by which to translate each point along the y axis.
	 * @return	Matrix.
	 * @version Egret 2.4
	 */
	public function append(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix;
	
	/**
	 * Given a point in the pretransform coordinate space, returns the coordinates of that point after the transformation occurs.
	 * Unlike the standard transformation applied using the transformPoint() method, the deltaTransformPoint() method's
	 * transformation does not consider the translation parameters tx and ty.
	 * @param	point The point for which you want to get the result of the matrix transformation.
	 * @return	The point resulting from applying the matrix transformation.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function deltaTransformPoint(point:Point):Point;
	
	/**
	 * Includes parameters for scaling, rotation, and translation.
	 * When applied to a matrix it sets the matrix's values based on those parameters.
	 * @param	scaleX		The factor by which to scale horizontally.
	 * @param	scaleY		The factor by which scale vertically.
	 * @param	rotation	The amount to rotate, in radians.
	 * @param	tx			The number of pixels to translate (move) to the right along the x axis.
	 * @param	ty			The number of pixels to translate (move) down along the y axis.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function createBox(scaleX:Float, scaleY:Float, ?rotation:Float, ?tx:Float, ?ty:Float):Void;
	
	/**
	 * Creates the specific style of matrix expected by the beginGradientFill() and lineGradientStyle() methods of the Graphics class.
	 * Width and height are scaled to a scaleX/scaleY pair and the tx/ty values are offset by half the width and height.
	 * @param	width		The width of the gradient box.
	 * @param	height		The height of the gradient box.
	 * @param	rotation	The amount to rotate, in radians.
	 * @param	tx			The distance, in pixels, to translate to the right along the x axis.
	 * 						This value is offset by half of the width parameter.
	 * @param	ty			The distance, in pixels, to translate down along the y axis.
	 * 						This value is offset by half of the height parameter.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function createGradientBox(width:Float, height:Float, ?rotation:Float, ?tx:Float, ?ty:Float):Void;
	
	/**
	 * Returns a text value listing the properties of the Matrix object.
	 * @return A string containing the values of the properties of the Matrix object: a, b, c, d, tx, and ty.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function toString():String;
}