package egret.events;

/**
 * The OrientationEvent provides information from the physical orientation of the device.
 * Note: Currently, Browsers on the iOS and Android does not handle the coordinates the same way.
 * Take care about this while using them.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.OrientationEvent")
extern class OrientationEvent extends Event 
{
	/**
	 * Creates an OrientationEvent object to pass as a parameter to event listeners.
	 * @param	type		The type of the event, accessible as Event.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable	Determines whether the Event object can be canceled.
	 * @param	data		The optional data associated with this event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false);
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * A number representing the motion of the device around the z axis, express in degrees with values ranging from 0 to 360.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var alpha:Float;
	
	/**
	 * A number representing the motion of the device around the x axis, express in degrees with values ranging from -180 to 180.
	 * This represents a front to back motion of the device.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var beta:Float;
	
	/**
	 * A number representing the motion of the device around the y axis, express in degrees with values ranging from -90 to 90.
	 * This represents a left to right motion of the device.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var gamma:Float;
}