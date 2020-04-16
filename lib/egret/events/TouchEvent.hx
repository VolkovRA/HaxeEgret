package egret.events;

/**
 * The TouchEvent class lets you handle events on devices that detect user contact with the device (such as a finger on a touch screen).
 * When a user interacts with a device such as a mobile phone or tablet with a touch screen, the user typically touches the screen with
 * his or her fingers or a pointing device.
 * You can develop applications that respond to basic touch events (such as a single finger tap) with the TouchEvent class.
 * Create event listeners using the event types defined in this class.
 * 
 * Note: When objects are nested on the display list, touch events target the deepest possible nested object that is visible in the display list.
 * This object is called the target node. To have a target node's ancestor (an object containing the target node in the display list)
 * receive notification of a touch event, use EventDispatcher.addEventListener() on the ancestor node with the type parameter set
 * to the specific touch event you want to detect.
 *
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.TouchEvent")
extern class TouchEvent extends Event 
{
	/**
	 * Creates an Event object that contains information about touch events.
	 * @param	type			The type of the event, accessible as Event.type.
	 * @param	bubbles			Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable		Determines whether the Event object can be canceled.
	 * @param	stageX			The horizontal coordinate at which the event occurred in global Stage coordinates.
	 * @param	stageY			The vertical coordinate at which the event occurred in global Stage coordinates.
	 * @param	touchPointID	A unique identification number assigned to the touch point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(	type:String,
							bubbles:Bool = false,
							cancelable:Bool = false,
							stageX:Float = 0,
							stageY:Float = 0,
							touchPointID:Int = 0
	);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Dispatched when the user touches the device, and is continuously dispatched until the point of contact is removed.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var TOUCH_MOVE:String = "touchMove";
	
	/**
	 * Dispatched when the user first contacts a touch-enabled device (such as touches a finger to a mobile phone or tablet with a touch screen).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var TOUCH_BEGIN:String = "touchBegin";
	
	/**
	 * Dispatched when the user removes contact with a touch-enabled device (such as lifts a finger off a mobile phone
	 * or tablet with a touch screen).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var TOUCH_END:String = "touchEnd";
	
	/**
	 * Dispatched when an event of some kind occurred that canceled the touch.
	 * Such as the eui.Scroller will dispatch 'TOUCH_CANCEL' when it start move, the 'TOUCH_END' and 'TOUCH_TAP' will not be triggered.
	 * @version Egret 3.0.1
	 * @platform Web,Native
	 */
	static public inline var TOUCH_CANCEL:String = "touchCancel";
	
	/**
	 * Dispatched when the user lifts the point of contact over the same DisplayObject instance on which the contact
	 * was initiated on a touch-enabled device.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var TOUCH_TAP:String = "touchTap";
	
	/**
	 * Dispatched when the user lifts the point of contact over the different DisplayObject instance on which the contact
	 * was initiated on a touch-enabled device (such as presses and releases a finger from a single point over a display
	 * object on a mobile phone or tablet with a touch screen).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var TOUCH_RELEASE_OUTSIDE:String = "touchReleaseOutside";
	
	/**
	 * Uses a specified target to dispatchEvent an event.
	 * Using this method can reduce the number of reallocate event objects, which allows you to get better code execution performance.
	 * @param	target			The event target.
	 * @param	type			The type of the event, accessible as Event.type.
	 * @param	bubbles			Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable		Determines whether the Event object can be canceled.
	 * @param	stageX			The horizontal coordinate at which the event occurred in global Stage coordinates.
	 * @param	stageY			The vertical coordinate at which the event occurred in global Stage coordinates.
	 * @param	touchPointID	A unique identification number (as an int) assigned to the touch point.
	 * 
	 * @see Event.create()
	 * @see Event.release()
	 * 
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function dispatchTouchEvent(	target:IEventDispatcher,
												type:String,
												bubbles:Bool = false,
												cancelable:Bool = false,
												stageX:Float = 0,
												stageY:Float = 0,
												touchPointID:Int = 0,
												touchDown:Bool = false
	):Bool;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The horizontal coordinate at which the event occurred in global Stage coordinates.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var stageX(default, null):Float;
	
	/**
	 * The vertical coordinate at which the event occurred in global Stage coordinates.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var stageY(default, null):Float;
	
	/**
	 * The horizontal coordinate at which the event occurred relative to the display object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var localX(default, null):Float;
	
	/**
	 * The vertical coordinate at which the event occurred relative to the display object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var localY(default, null):Float;
	
	/**
	 * A unique identification number assigned to the touch point.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var touchPointID:Int;
	
	/**
	 * Whether the touch is pressed (true) or not pressed (false).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var touchDown:Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Instructs Egret runtime to render after processing of this event completes, if the display list has been modified.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function updateAfterEvent():Void;
}