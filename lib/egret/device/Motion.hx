package egret.device;

import egret.events.EventDispatcher;

/**
 * The Motion class emits events based on activity detected by the device's motion sensor.
 * This data represents the device's movement along a 3-dimensional axis.
 * When the device moves, the sensor detects this movement and emit the CHANGE event.
 * See:e MotionEvent.
 *
 * @event Event.CHANGE	Device is moved.
 * 
 * @version Egret 2.4
 * @platform Web
 * @author VolkovRA
 */
@:native("egret.Motion")
extern class Motion extends EventDispatcher 
{
	/**
	 * Creates a new Motion instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	/**
	 * Start to monitor device movement.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public function start():Void;
	
	/**
	 * Stop monitor device movement.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public function stop():Void;
}