package egret.display;

import egret.HashObject;
import egret.geom.Matrix;

/**
 * The Graphics class contains a set of methods for creating vector shape. Display objects that support drawing include Sprite and Shape objects.
 * Each class in these classes includes the graphics attribute that is a Graphics object.
 * The following auxiliary functions are provided for ease of use: drawRect(), drawRoundRect(), drawCircle(), and drawEllipse().
 * @see http://edn.egret.com/cn/docs/page/136 Draw Rectangle
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Graphics")
extern class Graphics extends HashObject 
{
	/**
	 * Initializes a Graphics object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Specify a simple single color fill that will be used for subsequent calls to other Graphics methods (for example, lineTo() and drawCircle()) when drawing.
	 * Calling the clear() method will clear the fill.
	 * @param	color	Filled color.
	 * @param	alpha	Filled Alpha value.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function beginFill(color:Float, alpha:Float = 1):Void;
	
	/**
	 * Specifies a gradient fill used by subsequent calls to other Graphics methods (such as lineTo() or drawCircle()) for the object.
	 * Calling the clear() method clears the fill.
	 * @param	type	A value from the GradientType class that specifies which gradient type to use: GradientType.LINEAR or GradientType.RADIAL.
	 * @param	colors	An array of RGB hexadecimal color values used in the gradient; for example, red is 0xFF0000, blue is 0x0000FF, and so on.
	 * 					You can specify up to 15 colors. For each color, specify a corresponding value in the alphas and ratios parameters.
	 * @param	alphas	An array of alpha values for the corresponding colors in the colors array;
	 * @param	ratios	An array of color distribution ratios; valid values are 0-255.
	 * @param	matrix	A transformation matrix as defined by the egret.Matrix class. The egret.Matrix class includes a createGradientBox() method,
	 * 					which lets you conveniently set up the matrix for use with the beginGradientFill() method.
	 * @platform Web,Native
	 * @version Egret 2.4
	 */
	public function beginGradientFill(	type:GradientType,
										colors:Array<Float>,
										alphas:Array<Float>,
										ratios:Array<Float>,
										?matrix:Matrix
	):Void;
	
	/**
	 * Apply fill to the lines and curves added after the previous calling to the beginFill() method.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function endFill():Void;
	
	/**
	 * Specify a line style that will be used for subsequent calls to Graphics methods such as lineTo() and drawCircle().
	 * @param	thickness		An integer, indicating the thickness of the line in points. Valid values are 0 to 255.
	 * 							If a number is not specified, or if the parameter is undefined, a line is not drawn.
	 * 							If a value less than 0 is passed, the default value is 0.
	 * 							Value 0 indicates hairline thickness; the maximum thickness is 255.
	 * 							If a value greater than 255 is passed, the default value is 255.
	 * @param	color			A hexadecimal color value of the line (for example, red is 0xFF0000, and blue is 0x0000FF, etc.).
	 * 							If no value is specified, the default value is 0x000000 (black). Optional.
	 * @param	alpha			Indicates Alpha value of the line's color. Valid values are 0 to 1.
	 * 							If no value is specified, the default value is 1 (solid).
	 * 							If the value is less than 0, the default value is 0.
	 * 							If the value is greater than 1, the default value is 1.
	 * @param	pixelHinting	A boolean value that specifies whether to hint strokes to full pixels.
	 * 							This affects both the position of anchors of a curve and the line stroke size itself.
	 * 							With pixelHinting set to true, the line width is adjusted to full pixel width.
	 * 							With pixelHinting set to false, disjoints can appear for curves and straight lines.
	 * @param	scaleMode		Specifies the scale mode to be used.
	 * @param	caps			Specifies the value of the CapsStyle class of the endpoint type at the end of the line.
	 * @param	joints			Specifies the type of joint appearance of corner.
	 * @param	miterLimit		Indicates the limit number of cut miter.
	 * @param	lineDash		Set the line dash.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function lineStyle(	thickness:Float			= null,
								color:Float				= 0x000000,
								alpha:Float				= 1.0,
								pixelHinting:Bool		= false,
								scaleMode:ScaleMode		= ScaleMode.NORMAL,
								caps:CapsStyle			= CapsStyle.ROUND,
								joints:JointStyle		= JointStyle.ROUND,
								miterLimit:Float		= 3,
								lineDash:Array<Float>	= null
	):Void;
	
	/**
	 * Draw a rectangle.
	 * @param	x		X Position of the center, relative to the registration point of the parent display object (in pixels).
	 * @param	y		Y Position of the center, relative to the registration point of the parent display object (in pixels).
	 * @param	width	Width of the rectangle (in pixels).
	 * @param	height	Height of the rectangle (in pixels).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function drawRect(x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	 * Draw a rectangle with rounded corners.
	 * @param	x				X Position of the center, relative to the registration point of the parent display object (in pixels).
	 * @param	y				Y Position of the center, relative to the registration point of the parent display object (in pixels).
	 * @param	width			Width of the rectangle (in pixels).
	 * @param	height			Height of the rectangle (in pixels).
	 * @param	ellipseWidth	Width used to draw an ellipse with rounded corners (in pixels).
	 * @param	ellipseHeight	Height used to draw an ellipse with rounded corners (in pixels).
	 * 							If no value is specified, the default value matches the value of the ellipseWidth parameter.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function drawRoundRect(x:Float, y:Float, width:Float, height:Float, ellipseWidth:Float, ?ellipseHeight:Float):Void;
	
	/**
	 * Draw a circle.
	 * @param	x		X Position of the center, relative to the registration point of the parent display object (in pixels).
	 * @param	y		Y Position of the center, relative to the registration point of the parent display object (in pixels).
	 * @param	radius	Radius of the circle (in pixels).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function drawCircle(x:Float, y:Float, radius:Float):Void;
	
	/**
	 * Draw an ellipse.
	 * @param	x		A number indicating the horizontal position, relative to the registration point of the parent display object (in pixels).
	 * @param	y		A number indicating the vertical position, relative to the registration point of the parent display object (in pixels).
	 * @param	width	Width of the rectangle (in pixels).
	 * @param	height	Height of the rectangle (in pixels).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function drawEllipse(x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	 * Move the current drawing position to (x, y).
	 * If any of these parameters is missed, calling this method will fail and the current drawing position keeps unchanged.
	 * @param	x	A number indicating the horizontal position, relative to the registration point of the parent display object (in pixels).
	 * @param	y	A number indicating the vertical position, relative to the registration point of the parent display object (in pixels).
	 */
	public function moveTo(x:Float, y:Float):Void;
	
	/**
	 * Draw a straight line from the current drawing position to (x, y) using the current line style.
	 * The current drawing position is then set to (x, y).
	 * @param	x	A number indicating the horizontal position, relative to the registration point of the parent display object (in pixels).
	 * @param	y	A number indicating the vertical position, relative to the registration point of the parent display object (in pixels).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function lineTo(x:Float, y:Float):Void;
	
	/**
	 * Draw a quadratic Bezier curve from the current drawing position to (anchorX, anchorY) using the current line style
	 * according to the control points specified by (controlX, controlY).
	 * The current drawing position is then set to (anchorX, anchorY).
	 * If the curveTo() method is called before the moveTo() method, the default value of the current drawing position is (0, 0).
	 * If any of these parameters is missed, calling this method will fail and the current drawing position keeps unchanged.
	 * The drawn curve is a quadratic Bezier curve. A quadratic Bezier curve contains two anchor points and one control point.
	 * The curve interpolates the two anchor points and bends to the control point.
	 * @param	controlX	A number indicating the horizontal position of the control point, relative to the registration point of the parent display object.
	 * @param	controlY	A number indicating the vertical position of the control point, relative to the registration point of the parent display object.
	 * @param	anchorX		A number indicating the horizontal position of the next anchor point, relative to the registration point of the parent display object.
	 * @param	anchorY		A number indicating the vertical position of the next anchor point, relative to the registration point of the parent display object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function curveTo(controlX:Float, controlY:Float, anchorX:Float, anchorY:Float):Void;
	
	/**
	 * Draws a cubic Bezier curve from the current drawing position to the specified anchor.
	 * Cubic Bezier curves consist of two anchor points and two control points.
	 * The curve interpolates the two anchor points and two control points to the curve.
	 * @param	controlX1	Specifies the first control point relative to the registration point of the parent display the horizontal position of the object.
	 * @param	controlY1	Specifies the first control point relative to the registration point of the parent display the vertical position of the object.
	 * @param	controlX2	Specify the second control point relative to the registration point of the parent display the horizontal position of the object.
	 * @param	controlY2	Specify the second control point relative to the registration point of the parent display the vertical position of the object.
	 * @param	anchorX		Specifies the anchor point relative to the registration point of the parent display the horizontal position of the object.
	 * @param	anchorY		Specifies the anchor point relative to the registration point of the parent display the vertical position of the object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function cubicCurveTo(controlX1:Float, controlY1:Float, controlX2:Float, controlY2:Float, anchorX:Float, anchorY:Float):Void;
	
	/**
	 * Adds an arc to the path which is centered at (x, y) position with radius r starting at startAngle and ending
	 * at endAngle going in the given direction by anticlockwise (defaulting to clockwise).
	 * @param	x				The x coordinate of the arc's center.
	 * @param	y				The y coordinate of the arc's center.
	 * @param	radius			The arc's radius.
	 * @param	startAngle		The angle at which the arc starts, measured clockwise from the positive x axis and expressed in radians.
	 * @param	endAngle		The angle at which the arc ends, measured clockwise from the positive x axis and expressed in radians.
	 * @param	anticlockwise	If true, causes the arc to be drawn counter-clockwise between the two angles. By default it is drawn clockwise.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function drawArc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, anticlockwise:Bool = false):Void;
	
	/**
	 * Clear graphics that are drawn to this Graphics object, and reset fill and line style settings.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function clear():Void;
}