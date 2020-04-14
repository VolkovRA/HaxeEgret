package egret.display;

import egret.events.EventDispatcher;
import egret.filters.Filter;
import egret.geom.Matrix;
import egret.geom.Point;
import egret.geom.Rectangle;

/**
 * The DisplayObject class is the base class for all objects that can be placed on the display list. The display list
 * manages all objects displayed in the runtime. Use the DisplayObjectContainer class to arrange the display
 * objects in the display list. DisplayObjectContainer objects can have child display objects, while other display objects,
 * such as Shape and TextField objects, are "leaf" nodes that have only parents and siblings, no children.
 * The DisplayObject class supports basic functionality like the x and y position of an object, as well as more advanced
 * properties of the object such as its transformation matrix.<br/>
 * The DisplayObject class contains several broadcast events.Normally, the target of any particular event is a specific
 * DisplayObject instance. For example, the target of an added event is the specific DisplayObject instance that was added
 * to the display list. Having a single target restricts the placement of event listeners to that target and in some cases
 * the target's ancestors on the display list. With broadcast events, however, the target is not a specific DisplayObject
 * instance, but rather all DisplayObject instances, including those that are not on the display list. This means that you
 * can add a listener to any DisplayObject instance to listen for broadcast events.
 * 
 * @event Event.ADDED						Dispatched when a display object is added to the display list.
 * 
 * @event Event.ADDED_TO_STAGE				Dispatched when a display object is added to the on stage display list, either
 * 											directly or through the addition of a sub tree in which the display object is contained.
 * 
 * @event Event.REMOVED						Dispatched when a display object is about to be removed from the display list.
 * 
 * @event Event.REMOVED_FROM_STAGE			Dispatched when a display object is about to be removed from the display list, either
 * 											directly or through the removal of a sub tree in which the display object is contained.
 *
 * @event Event.ENTER_FRAME					[broadcast event] Dispatched when the playhead is entering a new frame.
 * 
 * @event Event.RENDER						[broadcast event] Dispatched when the display list is about to be updated and rendered.
 * 
 * @event TouchEvent.TOUCH_MOVE				Dispatched when the user touches the device, and is continuously dispatched until the
 * 											point of contact is removed.
 * 
 * @event TouchEvent.TOUCH_BEGIN			Dispatched when the user first contacts a touch-enabled device (such as touches a finger
 * 											to a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_END				Dispatched when the user removes contact with a touch-enabled device (such as lifts a
 * 											finger off a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_TAP				Dispatched when the user lifts the point of contact over the same DisplayObject instance
 * 											on which the contact was initiated on a touch-enabled device (such as presses and releases
 * 											a finger from a single point over a display object on a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_RELEASE_OUTSIDE	Dispatched when the user lifts the point of contact over the different DisplayObject
 * 											instance on which the contact was initiated on a touch-enabled device (such as presses and
 * 											releases a finger from a single point over a display object on a mobile phone or tablet
 * 											with a touch screen).
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.DisplayObject")
extern class DisplayObject extends EventDispatcher 
{
	/**
	 * Initializes a DisplayObject object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Indicates the instance name of the DisplayObject.
	 * The object can be identified in the child list of its parent display object container by calling
	 * the getChildByName() method of the display object container.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var name:String;
	
	/**
	 * Indicates the DisplayObjectContainer object that contains this display object.
	 * Use the parent property to specify a relative path to display objects that are above the current
	 * display object in the display list hierarchy.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var parent(default, null):DisplayObjectContainer;
	
	/**
	 * The Stage of the display object.
	 * You can create and load multiple display objects into the display list, and the stage property of
	 * each display object refers to the same Stage object.
	 * If a display object is not added to the display list, its stage property is set to null.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var stage(default, null):Stage;
	
	/**
	 * A Matrix object containing values that alter the scaling, rotation, and translation of the display object.
	 * Note: to change the value of a display object's matrix, you must make a copy of the entire matrix object,
	 * then copy the new object into the matrix property of the display object.
	 * 
	 * Example the following code increases the tx value of a display object's matrix:
	 * <code>
	 *     var myMatrix:Matrix = myDisplayObject.matrix;
	 *     myMatrix.tx += 10;
	 *     myDisplayObject.matrix = myMatrix;
	 * </code>
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var matrix:Matrix;
	
	/**
	 * Indicates the x coordinate of the DisplayObject instance relative to the local coordinates of the parent DisplayObjectContainer.
	 * If the object is inside a DisplayObjectContainer that has transformations, it is in
	 * the local coordinate system of the enclosing DisplayObjectContainer. Thus, for a DisplayObjectContainer
	 * rotated 90° counterclockwise, the DisplayObjectContainer's children inherit a coordinate system that is
	 * rotated 90° counterclockwise. The object's coordinates refer to the registration point position.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var x:Float;
	
	/**
	 * Indicates the y coordinate of the DisplayObject instance relative to the local coordinates of the parent DisplayObjectContainer.
	 * If the object is inside a DisplayObjectContainer that has transformations, it is in
	 * the local coordinate system of the enclosing DisplayObjectContainer. Thus, for a DisplayObjectContainer rotated
	 * 90° counterclockwise, the DisplayObjectContainer's children inherit a coordinate system that is rotated 90°
	 * counterclockwise. The object's coordinates refer to the registration point position.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var y:Float;
	
	/**
	 * Indicates the horizontal scale (percentage) of the object as applied from the registration point.
	 * The default 1.0 equals 100% scale.
	 * Default: 1
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var scaleX:Float;
	
	/**
	 * Indicates the vertical scale (percentage) of an object as applied from the registration point of the object.
	 * The default 1.0 equals 100% scale.
	 * Default: 1
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var scaleY:Float;
	
	/**
	 * Indicates the rotation of the DisplayObject instance, in degrees, from its original orientation.
	 * Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range.
	 * For example, the statement myDisplayObject.rotation = 450 is the same as myDisplayObject.rotation = 90.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var rotation:Float;
	
	/**
	 * Indicates the x-direction bevel of DisplayObject.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var skewX:Float;
	
	/**
	 * Indicates the y-direction bevel of DisplayObject.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var skewY:Float;
	
	/**
	 * Indicates the width of the display object, in pixels.
	 * The width is calculated based on the bounds of the content of the display object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var width:Float;
	
	/**
	 * Indicates the height of the display object, in pixels.
	 * The height is calculated based on the bounds of the content of the display object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var height:Float;
	
	/**
	 * Measuring width.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var measuredWidth(default, null):Float;
	
	/**
	 * Measuring height.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var measuredHeight(default, null):Float;
	
	/**
	 * X represents the object of which is the anchor.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var anchorOffsetX:Float;
	
	/**
	 * Y represents the object of which is the anchor.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var anchorOffsetY:Float;
	
	/**
	 * Whether or not the display object is visible.
	 * Display objects that are not visible are disabled.
	 * For example, if visible=false for an DisplayObject instance, it cannot receive touch or other user input.
	 * Default: true
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var visible:Bool;
	
	/**
	 * If set to true, Egret runtime caches an internal bitmap representation of the display object.
	 * This caching can increase performance for display objects that contain complex vector content.
	 * After you set the cacheAsBitmap property to true, the rendering does not change, however the display object performs
	 * pixel snapping automatically. The execution speed can be significantly faster depending on the complexity of the content.
	 * The cacheAsBitmap property is best used with display objects that have mostly static content and that do not scale and
	 * rotate frequently.
	 * Note: The display object will not create the bitmap caching when the memory exceeds the upper limit,even if you set it to true.
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var cacheAsBitmap:Bool;
	
	/**
	 * Indicates the alpha transparency value of the object specified.
	 * Valid values are 0 (fully transparent) to 1 (fully opaque). The default value is 1.
	 * Display objects with alpha set to 0 are active, even though they are invisible.
	 * Default: 1
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var alpha:Float;
	
	/**
	 * Specifies whether this object receives touch or other user input.
	 * The default value is false, which means that by default any DisplayObject instance that is on the display
	 * list cannot receive touch events. If touchEnabled is set to false, the instance does not receive any touch
	 * events (or other user input events). Any children of this instance on the display list are not affected.
	 * To change the touchEnabled behavior for all children of an object on the display list, use DisplayObjectContainer.touchChildren.
	 * @see egret.DisplayObjectContainer#touchChildren
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var touchEnabled:Bool;
	
	/**
	 * The scroll rectangle bounds of the display object.
	 * The display object is cropped to the size defined by the rectangle, and it scrolls within the rectangle when you
	 * change the x and y properties of the scrollRect object. A scrolled display object always scrolls in whole pixel increments.
	 * You can scroll an object left and right by setting the x property of the scrollRect Rectangle object. You can scroll an object
	 * up and down by setting the y property of the scrollRect Rectangle object. If the display object is rotated 90° and you scroll
	 * it left and right, the display object actually scrolls up and down.
	 *
	 * Note: to change the value of a display object's scrollRect, you must make a copy of the entire scrollRect object, then copy
	 * the new object into the scrollRect property of the display object.
	 * 
	 * Example the following code increases the x value of a display object's scrollRect:
	 * <code>
	 *     var myRectangle:Rectangle = myDisplayObject.scrollRect;
	 *     myRectangle.x += 10;
	 *     myDisplayObject.scrollRect = myRectangle;
	 * </code>
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var scrollRect:Rectangle;
	
	/**
	 * A value from the BlendMode class that specifies which blend mode to use.
	 * Determine how a source image (new one) is drawn on the target image (old one).
	 * If you attempt to set this property to an invalid value, Egret runtime set the value to BlendMode.NORMAL.
	 * Default: BlendMode.NORMAL
	 * @see egret.BlendMode
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var blendMode:BlendMode;
	
	/**
	 * The calling display object is masked by the specified mask object.
	 * To ensure that masking works when the Stage is scaled, the mask display object must be in an active part of the display list.
	 * The mask object itself is not drawn. Set mask to null to remove the mask.
	 * To be able to scale a mask object, it must be on the display list.
	 * To be able to drag a mask object , it must be on the display list.
	 * Note: A single mask object cannot be used to mask more than one calling display object. When the mask is assigned
	 * to a second display object, it is removed as the mask of the first object, and that object's mask property becomes null.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var mask:DisplayObject;
	
	/**
	 * An indexed array that contains each filter object currently associated with the display object.
	 * @version Egret 3.1.0
	 * @platform Web
	 */
	public var filters:Array<Filter>;
	
	/**
	 * Set a tint color for the current object.
	 * @version Egret 5.2.24
	 * @platform Web,Native
	 */
	public var tint:Float;
	
	/**
	 * The z-order (front-to-back order) of the object.
	 * @version Egret 5.2.24
	 * @platform Web,Native
	 */
	public var zIndex:Float;
	
	/**
	 * Allow objects to use zIndex sorting.
	 * @version Egret 5.2.24
	 * @platform Web,Native
	 */
	public var sortableChildren:Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Returns a rectangle that defines the area of the display object relative to the coordinate system of the targetCoordinateSpace object.
	 * @param	targetCoordinateSpace	The display object that defines the coordinate system to use.
	 * @param	resultRect				A reusable instance of Rectangle for saving the results.
	 * 									Passing this parameter can reduce the number of reallocate objects, 
	 * 									which allows you to get better code execution performance.
	 * @return	The rectangle that defines the area of the display object relative to the targetCoordinateSpace object's coordinate system.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getTransformedBounds(targetCoordinateSpace:DisplayObject, ?resultRect:Rectangle):Rectangle;
	
	/**
	 * Obtain measurement boundary of display object.
	 * @param	resultRect		It is used to import Rectangle object for saving results, preventing duplicate object creation.
	 * @param	calculateAnchor	It is used to determine whether to calculate anchor point.
	 * @return	A Rectangle.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getBounds(?resultRect:Rectangle, ?calculateAnchor:Bool):Rectangle;
	
	/**
	 * Converts the point object from the Stage (global) coordinates to the display object's (local) coordinates.
	 * @param	stageX	The x value in the global coordinates.
	 * @param	stageY	The y value in the global coordinates.
	 * @param	result	A reusable instance of Point for saving the results.
	 * 			Passing this parameter can reduce the number of reallocate objects, which allows you to get better code execution performance.
	 * @return	A Point object with coordinates relative to the display object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function globalToLocal(?stageX:Float, ?stageY:Float, ?result:Point):Point;
	
	/**
	 * Converts the point object from the display object's (local) coordinates to the Stage (global) coordinates.
	 * @param	localX	The x value in the local coordinates.
	 * @param	localY	The y value in the local coordinates.
	 * @param	result	A reusable instance of Point for saving the results.
	 * 					Passing this parameter can reduce the number of reallocate objects, which allows you to get better code execution performance.
	 * @return	A Point object with coordinates relative to the Stage.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function localToGlobal(?localX:Float, ?localY:Float, ?result:Point):Point;
	
	/**
	 * Calculate the display object to determine whether it overlaps or crosses with the points specified by the x and y parameters.
	 * The x and y parameters specify the points in the coordinates of the stage, rather than the points in the display object container
	 * that contains display objects (except the situation where the display object container is a stage).
	 * Note: Don't use accurate pixel collision detection on a large number of objects. Otherwise, this will cause serious performance deterioration.
	 * @param	x			X Coordinate of the object to be tested.
	 * @param	y			Y Coordinate of the object to be tested.
	 * @param	shapeFlag	Whether to check the actual pixel of object (true) or check that of border (false).Write realized.
	 * @return	If display object overlaps or crosses with the specified point, it is true; otherwise, it is false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function hitTestPoint(x:Float, y:Float, ?shapeFlag:Bool):Bool;
}