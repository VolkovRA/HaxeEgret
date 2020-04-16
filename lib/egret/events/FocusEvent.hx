package egret.events;

/**
 * When the user changes the focus from one object in the display list to another object, the object dispatches a FocusEvent object.
 * Currently only supports input text.
 * Focus events: FocusEvent.FOCUS_IN FocusEvent.FOCUS_OUT
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.FocusEvent")
extern class FocusEvent extends Event 
{
	/**
	 * Create a FocusEvent objects.
	 * @param	type		The type of the event, accessible as Event.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow. The default value is false.
	 * @param	cancelable	Determines whether the Event object can be canceled. The default values is false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Gets focus.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var FOCUS_IN:String = "focusIn";
	
	/**
	 * Loses focus.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var FOCUS_OUT:String = "focusOut";
}