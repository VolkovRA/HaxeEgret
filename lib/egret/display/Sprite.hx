package egret.display;

/**
 * The Sprite class is a basic display list building block: a display list node that can contain children.
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
@:native("egret.Sprite")
extern class Sprite extends DisplayObjectContainer 
{
	/**
	 * Creates a new Sprite instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	/**
	 * Specifies the Graphics object belonging to this Shape object, where vector drawing commands can occur.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var graphics(default, null):Graphics;
}