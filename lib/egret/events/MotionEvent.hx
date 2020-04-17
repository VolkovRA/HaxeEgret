package egret.events;

import egret.device.AccelerationParams;
import egret.device.RotationRateParams;

/**
 * MotionEvent represents the device's movement.
 * Acceleration and accelerationIncludingGravity to represents the device's acceleration.
 * RotationRate to represents the device's rotation.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.MotionEvent")
extern class MotionEvent extends Event 
{
	/**
	 * Creates an MotionEvent object to pass as a parameter to event listeners.
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
	 * An object giving the acceleration of the device on the three axis X, Y and Z.
	 * Acceleration is expressed in m/s2.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var acceleration:AccelerationParams;
	
	/**
	 * An object giving the acceleration of the device on the three axis X, Y and Z with the effect of gravity.
	 * Acceleration is expressed in m/s2.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var accelerationIncludingGravity:AccelerationParams;
	
	/**
	 * An object giving the rate of change of the device's orientation on the three orientation axis alpha, beta and gamma.
	 * Rotation rate is express in degrees per seconds.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var rotationRate:RotationRateParams;
}