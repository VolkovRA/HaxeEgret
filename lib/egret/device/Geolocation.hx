package egret.device;

import egret.events.EventDispatcher;

/**
 * The Geolocation able to obtain the position of the device.
 * Geolocation will emit CHANGE event when the device's location is changed.
 * It will emit IO_ERROR event if the location request is denied or there is no location service on the device.
 *
 * @event Event.CHANGE		The device's location is changed.
 * 
 * @event Event.IO_ERROR	Error occurred while getting the location.
 * 
 * @version Egret 2.4
 * @platform Web
 * @author VolkovRA
 */
@:native("egret.Geolocation")
extern class Geolocation extends EventDispatcher 
{
	/**
	 * Creates a new Geolocation instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	/**
	 * Start to monitor the device's location.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public function start():Void;
	
	/**
	 * Stop monitor the device's location.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public function stop():Void;
}