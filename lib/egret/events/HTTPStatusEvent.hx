package egret.events;

/**
 * When a network request returns an HTTP status code, the application dispatches HTTPStatusEvent objects.
 * Before error or completion events will always send HTTPStatusEvent object.
 * HTTPStatusEvent object does not necessarily indicate an error condition.
 * It simply reflects the HTTP status code provided by the network stack (if any).
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.HTTPStatusEvent")
extern class HTTPStatusEvent extends Event 
{
	/**
	 * Create a HTTPStatusEvent objects.
	 * @param	type		The type of the event, accessible as Event.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable	Determines whether the Event object can be canceled.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * HTTPStatusEvent.HTTP_STATUS constant defines the value of the type property httpStatus event object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var HTTP_STATUS:String = "httpStatus";
	
	/**
	 * EventDispatcher object using the specified event object thrown Event.
	 * The objects will be thrown in the object cache pool for the next round robin.
	 * @param	target	Distribute event target.
	 * @param	status	The server returns the HTTP status code.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function dispatchHTTPStatusEvent(target:IEventDispatcher, status:Int):Bool;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The server returns the HTTP status code.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var status(default, null):Int;
}