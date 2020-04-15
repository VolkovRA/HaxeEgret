package egret.display;

import egret.geom.Rectangle;

/**
 * The Bitmap class represents display objects that represent bitmap images.
 * The Bitmap() constructor allows you to create a Bitmap object that contains a reference to a BitmapData object.
 * After you create a Bitmap object, use the addChild() or addChildAt() method of the parent DisplayObjectContainer
 * instance to place the bitmap on the display list.A Bitmap object can share its texture reference among several
 * Bitmap objects, independent of translation or rotation properties. Because you can create multiple Bitmap objects
 * that reference the same texture object, multiple display objects can use the same complex texture object
 * without incurring the memory overhead of a texture object for each display object instance.
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
 * 
 * @see egret.Texture
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Bitmap")
extern class Bitmap extends DisplayObject 
{
	/**
	 * Initializes a Bitmap object to refer to the specified Texture object.
	 * @param	value The Texture object being referenced.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(?value:Texture);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * The default value of whether or not is smoothed when scaled.
	 * When object such as Bitmap is created,smoothing property will be set to this value.
	 * Default: true
	 * @version Egret 3.0
	 * @platform Web
	 */
	static public var defaultSmoothing:Bool;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The Texture object being referenced.
	 * If you pass the constructor of type BitmapData or last set for bitmapData, this value returns null.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var texture:Texture;
	
	/**
	 * Represent a Rectangle Area that the 9 scale area of Image.
	 * Notice: This property is valid only when <code>fillMode</code> <b>is</b> <code>BitmapFillMode.SCALE</code>.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var scale9Grid:Rectangle;
	
	/**
	 * Determines how the bitmap fills in the dimensions.
	 * When set to <code>BitmapFillMode.REPEAT</code>, the bitmap
	 * repeats to fill the region.
	 * When set to <code>BitmapFillMode.SCALE</code>, the bitmap
	 * stretches to fill the region.
	 *
	 * Default: <code>BitmapFillMode.SCALE</code>
	 * @version Egret 2.4
	 * @platform Web
	 */
	public var fillMode:BitmapFillMode;
	
	/**
	 * Whether or not the bitmap is smoothed when scaled.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public var smoothing:Bool;
	
	/**
	 * Specifies whether this object use precise hit testing by checking the alpha value of each pixel.
	 * If pixelHitTest is set to true,the transparent area of the bitmap will be touched through.
	 * Note:If the image is loaded from cross origin,that we can't access to the pixel data,so it might cause the pixelHitTest property invalid.
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var pixelHitTest:Bool;
}