package egret.events;

/**
 * The GeolocationEvent represents the position and altitude of the device on Earth,
 * and show errors occurred while getting the location of the device.
 * @version Egret 2.4
 * @platform Web,Native
 * @see http://edn.egret.com/cn/docs/page/662 Get location information.
 * @author VolkovRA
 */
@:native("egret.GeolocationEvent")
extern class GeolocationEvent extends Event 
{
	/**
	 * Creates an GeolocationEvent object to pass as a parameter to event listeners.
	 * @param	type		The type of the event, accessible as Event.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable	Determines whether the Event object can be canceled.
	 * @param	data		The optional data associated with this event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false, data:Dynamic = null);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * The acquisition of the location information failed because of app don't have permission.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var PERMISSION_DENIED:String = "permissionDenied";
	
	/**
	 * The acquisition of the location failed because at least one internal source of position returned an internal error.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var UNAVAILABLE:String = "unavailable";
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The position's longitude in decimal degrees.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var longitude:Float;
	
	/**
	 * The position's latitude in decimal degrees.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var latitude:Float;
	
	/**
	 * The velocity of the device in meters per second.
	 * This value can be null.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var speed:Float;
	
	/**
	 * The direction in which the device is traveling.
	 * This value, specified in degrees, indicates how far off from heading due north the device is.
	 * 0 degrees represents true true north, and the direction is determined clockwise (which means that
	 * east is 90 degrees and west is 270 degrees).
	 * If speed is 0, heading is NaN.
	 * If the device is unable to provide heading information, this value is null.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var heading:Float;
	
	/**
	 * The position's altitude in metres, relative to sea level.
	 * This value can be null if the implementation cannot provide the data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var altitude:Float;
	
	/**
	 * The accuracy of the latitude and longitude properties, expressed in meters.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var accuracy:Float;
	
	/**
	 * The accuracy of the altitude expressed in meters.
	 * This value can be null.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var altitudeAccuracy:Float;
	
	/**
	 * The type of error occurred while get the location of the device.
	 * The value could be:
	 *   1. GeolocationEvent.PERMISSION_DENIED
	 *   2. GeolocationEvent.UNAVAILABLE
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var errorType:String;
	
	/**
	 * The error message occurred while get the location of the device.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var errorMessage:String;
}