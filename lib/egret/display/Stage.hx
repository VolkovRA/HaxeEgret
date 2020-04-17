package egret.display;

/**
 * The Stage class represents the main drawing area.The Stage object is not globally accessible.
 * You need to access it through the stage property of a DisplayObject instance.
 * 
 * The Stage class has several ancestor classes — Sprite, DisplayObject, and EventDispatcher — from which
 * it inherits properties and methods. Many of these properties and methods are inapplicable to Stage objects.
 * 
 * @event egret.Event.RESIZE				Dispatched when the stageWidth or stageHeight property of the Stage object is changed.
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
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Stage")
extern class Stage extends DisplayObjectContainer 
{
	/**
	 * Do not allow self-instantiation.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	private function new();
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Gets and sets the frame rate of the stage.
	 * The frame rate is defined as frames per second.
	 * Valid range for the frame rate is from 0.01 to 1000 frames per second.
	 * Note: setting the frameRate property of one Stage object changes the frame rate for all Stage objects.
	 * Default: 30
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var frameRate:Float;
	
	/**
	 * Indicates the width of the stage, in pixels.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var stageWidth(default, null):Float;
	
	/**
	 * Indicates the height of the stage, in pixels.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var stageHeight(default, null):Float;
	
	/**
	 * A StageScaleMode class that specifies which scale mode to use. The following are valid values:
	 *   <code>1. StageScaleMode.EXACT_FIT</code> -- The entire application be visible in the specified area without trying to preserve the original aspect ratio. Distortion can occur, the application may be stretched or compressed.
	 *   <code>2. StageScaleMode.SHOW_ALL</code> -- The entire application is visible in the specified area without distortion while maintaining the application of the original aspect ratio. Applications may display border.
	 *   <code>3. StageScaleMode.NO_SCALE</code> -- The size of the entire application is fixed, so that even if the size of the player window changes, it remains unchanged. If the player window is smaller than the content, it may do some trimming.
	 *   <code>4. StageScaleMode.NO_BORDER</code> -- Keep the original aspect ratio scaling application content, after scaling a narrow direction of application content to fill the viewport players on both sides in the other direction may exceed the viewport and the player is cut.
	 *   <code>5. StageScaleMode.FIXED_WIDTH</code> -- Keep the original aspect ratio scaling application content, after scaling application content in the horizontal and vertical directions to fill the viewport player, but only to keep the contents of the original application constant width, height may change.
	 *   <code>6. StageScaleMode.FIXED_HEIGHT</code> -- Keep the original aspect ratio scaling application content, after scaling application content in the horizontal and vertical directions to fill the viewport player, but only to keep the contents of the original application constant height, width may change.
	 * Default: <code>StageScaleMode.SHOW_ALL</code>
	 */
	public var scaleMode:StageScaleMode;
	
	/**
	 * Horizontal and vertical screen display screen, can only be set under the current Native in the configuration file.
	 * A OrientationMode class that specifies which display mode to use. The following are valid values:
	 *   <code>1. OrientationMode.AUTO</code> -- Always follow the direction of application display screen, always guaranteed by the look down.
	 *   <code>2. OrientationMode.PORTRAIT</code> -- Applications remain portrait mode, namely horizontal screen look, the screen from left to right.
	 *   <code>3. OrientationMode.LANDSCAPE</code> -- Applications remain horizontal screen mode, namely vertical screen, the screen from right to left.
	 *   <code>4. OrientationMode.LANDSCAPE_FLIPPED</code> -- Applications remain horizontal screen mode, namely vertical screen, the screen from left to right.
	 * @platform Web
	 * @version 2.4
	 */
	public var orientation:OrientationMode;
	
	/**
	 * Draw texture zoom ratio.
	 * Default: 1
	 */
	public var textureScaleFactor:Float;
	
	/**
	 * Set the number of screens can simultaneously touch.
	 * Above this amount will not be triggered in response.
	 * Default: 99
	 */
	public var maxTouches:Int;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * After you call the invalidate() method, when the display list is next rendered,
	 * the Egret runtime sends a render event to each display object that has registered to listen for the render event.
	 * You must call the invalidate() method each time you want the Egret runtime to send render events.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function invalidate():Void;
	
	/**
	 * Set resolution size.
	 * @param	width	Width.
	 * @param	height	Height.
	 * @version Egret 2.5.5
	 * @platform Web,Native
	 */
	public function setContentSize(width:Float, height:Float):Void;
	
	
	
	////////////////////
	//   DEPRECATED   //
	////////////////////
	
	@:deprecated
	@:noCompletion
	public function registerImplementation(interfaceName:String, instance:Dynamic):Void;
	
	@:deprecated
	@:noCompletion
	public function getImplementation(interfaceName:String):Dynamic;
}