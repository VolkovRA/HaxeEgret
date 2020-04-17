package egret.device;

import egret.events.EventDispatcher;

/**
 * Orientation monitor the orientation of the device, send CHANGE event when the orientation is changed.
 * 
 * @event Event.CHANGE		Device's orientation is changed.
 * 
 * @version Egret 2.4
 * @platform Web
 * @author VolkovRA
 */
@:native("egret.DeviceOrientation")
extern class DeviceOrientation extends EventDispatcher 
{
	/**
	 * Creates a new DeviceOrientation instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	/**
	 * Start to monitor the device's orientation.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public function start():Void;
	
	/**
	 * Stop monitor the device's orientation.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public function stop():Void;
}