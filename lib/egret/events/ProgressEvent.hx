package egret.events;

/**
 * When a load operation has begun or a socket has received data, ProgressEvent object is dispatched.
 * There are two types of progress events: ProgressEvent.PROGRESS and ProgressEvent.SOCKET_DATA.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.ProgressEvent")
extern class ProgressEvent extends Event 
{
	/**
	 * Create an ProgressEvent object.
	 * @param	type		The type of the event, accessible as Event.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable	Determines whether the Event object can be canceled.
	 * @param	bytesLoaded	Number of items or bytes loaded.
	 * @param	bytesTotal	The total number of items or bytes loaded.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false, bytesLoaded:Int = 0, bytesTotal:Int = 0);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Changes in the loading progress.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var PROGRESS:String = "progress";
	
	/**
	 * Get the data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var SOCKET_DATA:String = "socketData";
	
	/**
	 * EventDispatcher object using the specified event object thrown Event.
	 * The objects will be thrown in the object cache pool for the next round robin.
	 * @param	target		Distribute event target.
	 * @param	type		The type of the event, accessible as Event.type.
	 * @param	bytesLoaded	Number of items or bytes loaded.
	 * @param	bytesTotal	The total number of items or bytes loaded.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function dispatchProgressEvent(target:IEventDispatcher, type:String, bytesLoaded:Int = 0, bytesTotal:Int = 0):Bool;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Number of items or bytes when the listener processes the event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bytesLoaded:Int;
	
	/**
	 * If the loading process succeeds, the total number or the total number of bytes that will be loaded term.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bytesTotal:Int;
}