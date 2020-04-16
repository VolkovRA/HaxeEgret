package egret.events;

/**
 * When a user clicks a hyperlink rich text object dispatches TextEvent object. Text Event Type: TextEvent.LINK.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.TextEvent")
extern class TextEvent extends Event
{
	/**
	 * TextEvent create an object that contains information about text events.
	 * @param	type		Type of event, you can access the TextEvent.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable	Determine whether the Event object can be canceled.
	 * @param	text		One or more characters of text entered by the user. Event listeners can access this information through the text property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false, text:String = "");
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * It defines the value of the type property of a link event object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var LINK:String = "link";
	
	/**
	 * EventDispatcher object using the specified event object thrown TextEvent.
	 * The objects will be thrown in the object cache pool for the next round robin.
	 * @param	target	Distribute event target.
	 * @param	type	The type of the event, accessible as Event.type.
	 * @param	text	Text TextEvent object assignment.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function dispatchTextEvent(target:IEventDispatcher, type:String, text:String):Bool;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * In TextEvent.LINK event, event corresponding string.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var text:String;
}