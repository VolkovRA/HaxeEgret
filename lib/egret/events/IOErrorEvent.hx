package egret.events;

/**
 * Streaming events, dispatching IOErrorEvent objects when errors cause input or output operations to fail.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.IOErrorEvent")
extern class IOErrorEvent extends Event 
{
	/**
	 * Create a IOErrorEvent objects.
	 * @param	type		Type of event, accessible as Event.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow. The default value is false.
	 * @param	cancelable	Determine whether the Event object can be canceled. The default value is false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * IO Error.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var IO_ERROR:String = "ioError";
	
	/**
	 * EventDispatcher object using the specified event object thrown Event.
	 * The objects will be thrown in the object cache pool for the next round robin.
	 * @param	target Distribute event target.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function dispatchIOErrorEvent(target:IEventDispatcher):Bool;
}