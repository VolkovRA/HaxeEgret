package egret.events;

/**
 * The Event class is used as the base class for the creation of Event objects, which are passed as parameters to event
 * listeners when an event occurs.The properties of the Event class carry basic information about an event, such as
 * the event's type or whether the event's default behavior can be canceled. For many events, such as the events represented
 * by the Event class constants, this basic information is sufficient. Other events, however, may require more detailed
 * information. Events associated with a touch tap, for example, need to include additional information about the
 * location of the touch event. You can pass such additional information to event listeners by extending the Event class,
 * which is what the TouchEvent class does. Egret API defines several Event subclasses for common events that require
 * additional information. Events associated with each of the Event subclasses are described in the documentation for
 * each class.The methods of the Event class can be used in event listener functions to affect the behavior of the event
 * object. Some events have an associated default behavior. Your event listener can cancel this behavior by calling the
 * preventDefault() method. You can also make the current event listener the last one to process an event by calling
 * the stopPropagation() or stopImmediatePropagation() method.
 * @see egret.EventDispatcher
 * @version Egret 2.4
 * @platform Web,Native
 * @includeExample egret/events/Event.ts
 * @see http://edn.egret.com/cn/docs/page/798 Cancel touch event
 * @author VolkovRA
 */
@:native("egret.Event")
extern class Event extends HashObject 
{
	/**
	 * Creates an Event object to pass as a parameter to event listeners.
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
	 * Dispatched when a display object is added to the on stage display list,
	 * either directly or through the addition of a sub tree in which the display object is contained.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var ADDED_TO_STAGE:String = "addedToStage";
	
	/**
	 * Dispatched when a display object is about to be removed from the display list,
	 * either directly or through the removal of a sub tree in which the display object is contained.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var REMOVED_FROM_STAGE:String = "removedFromStage";
	
	/**
	 * Dispatched when a display object is added to the display list.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var ADDED:String = "added";
	
	/**
	 * Dispatched when a display object is about to be removed from the display list.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var REMOVED:String = "removed";
	
	/**
	 * [broadcast event] Dispatched when the playhead is entering a new frame.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var ENTER_FRAME:String = "enterFrame";
	
	/**
	 * Dispatched when the display list is about to be updated and rendered.
	 * Note: Every time you want to receive a render event, you must call the stage.invalidate() method.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var RENDER:String = "render";
	
	/**
	 * Dispatched when the size of stage or UIComponent is changed.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var RESIZE:String = "resize";
	
	/**
	 * Dispatched when the value or selection of a property is changed.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var CHANGE:String = "change";
	
	/**
	 * Dispatched when the value or selection of a property is going to change.
	 * You can cancel this by calling the preventDefault() method.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var CHANGING:String = "changing";
	
	/**
	 * Dispatched when the net request is complete.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var COMPLETE:String = "complete";
	
	/**
	 * Dispatched when loop completed.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var LOOP_COMPLETE:String = "loopComplete";
	
	/**
	 * Dispatched when the TextInput instance gets focus.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var FOCUS_IN:String = "focusIn";
	
	/**
	 * Dispatched when the TextInput instance loses focus.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var FOCUS_OUT:String = "focusOut";
	
	/**
	 * Dispatched when the playback is ended.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var ENDED:String = "ended";
	
	/**
	 * Game activation.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var ACTIVATE:String = "activate";
	
	/**
	 * Deactivate.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var DEACTIVATE:String = "deactivate";
	
	/**
	 * The Event.CLOSE constant defines the value of the type property of the close event object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var CLOSE:String = "close";
	
	/**
	 * The Event.CONNECT constant defines the value of the type property of the connect event object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var CONNECT:String = "connect";
	
	/**
	 * The Event.LEAVE_STAGE constant defines the value of the type property of the leaveStage event object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var LEAVE_STAGE:String = "leaveStage";
	
	/**
	 * Event.SOUND_COMPLETE constant definition dispatched after the sound has finished playing.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var SOUND_COMPLETE:String = "soundComplete";
	
	/**
	 * Gets one event instance from the object pool or create a new one.
	 * We highly recommend using the Event.create() and Event.release() methods to create and release an event object,
	 * it can reduce the number of reallocate objects, which allows you to get better code execution performance.
	 * Note: If you want to use this method to initialize your custom event object,you must make sure the constructor
	 * of your custom event is the same as the constructor of egret.Event.
	 * @param	eventClass	eventClass Event Class.
	 * @param	type		The type of the event, accessible as Event.type.
	 * @param	bubbles		Determines whether the Event object participates in the bubbling stage of the event flow.
	 * @param	cancelable	Determines whether the Event object can be canceled.
	 */
	static public function create(eventClass:Class<Event>, type:String, bubbles:Bool = false, cancelable:Bool = false):Dynamic;
	
	/**
	 * Releases an event object and cache it into the object pool.We highly recommend using the Event.create()
	 * and Event.release() methods to create and release an event object,it can reduce the number of reallocate objects,
	 * which allows you to get better code execution performance.<br/>
	 * Note: The parameters of this method only accepts an instance created by the Event.create() method.
	 * if not,it may throw an error.
	 * <code>
	 *    let event = Event.create(Event,type, bubbles);
	 *    event.data = data; //optional,initializes custom data here
	 *    this.dispatchEvent(event);
	 *    Event.release(event);
	 * </code>
	 * @see #clean()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function release(event:Event):Void;
	
	/**
	 * EventDispatcher object using the specified event object thrown Event.
	 * Objects thrown objects will be cached in the pool for the next round robin.
	 * @param	target	The event target.
	 * @param	type	The type of the event. Event listeners can access this information through the inherited type property.
	 * @param	bubbles	Determines whether the Event object bubbles. Event listeners can access this information through the inherited bubbles property.
	 * @param	data	Data
	 * @return	A value of true unless preventDefault() is called on the event, in which case it returns false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function dispatchEvent(target:IEventDispatcher, type:String, bubbles:Bool = false, data:Dynamic = null):Bool;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The optional data associated with this event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var data:Dynamic;
	
	/**
	 * The type of event.
	 * The type is case-sensitive.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var type(default, null):String;
	
	/**
	 * Indicates whether an event is a bubbling event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bubbles(default, null):Bool;
	
	/**
	 * Indicates whether the behavior associated with the event can be prevented.
	 * If the behavior can be canceled, this value is true; otherwise it is false.
	 * @see #preventDefault()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var cancelable(default, null):Bool;
	
	/**
	 * The current phase in the event flow.
	 * This property can contain the following numeric values:
	 * The capture phase (EventPhase.CAPTURING_PHASE).
	 * The target phase (EventPhase.AT_TARGET)
	 * The bubbling phase (EventPhase.BUBBLING_PHASE).
	 * @see egret.EventPhase
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var eventPhase(default, null):EventPhase;
	
	/**
	 * The object that is actively processing the Event object with an event listener.
	 * For example, if a user clicks an OK button, the current target could be the node containing that
	 * button or one of its ancestors that has registered an event listener for that event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var currentTarget(default, null):Dynamic;
	
	/**
	 * The event target. This property contains the target node.
	 * For example, if a user clicks an OK button, the target node is the display list node containing that button.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var target(default, null):Dynamic;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Checks whether the preventDefault() method has been called on the event.
	 * If the preventDefault() method has been called, returns true; otherwise, returns false.
	 * @return If preventDefault() has been called, returns true; otherwise, returns false.
	 * @see #preventDefault()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function isDefaultPrevented():Bool;
	
	/**
	 * Cancels an event's default behavior if that behavior can be canceled.
	 * Many events have associated behaviors that are carried out by default. For example, if a user types a character
	 * into a text input, the default behavior is that the character is displayed in the text input. Because the
	 * TextEvent.TEXT_INPUT event's default behavior can be canceled, you can use the preventDefault() method to prevent
	 * the character from appearing. You can use the Event.cancelable property to check whether you can prevent the
	 * default behavior associated with a particular event. If the value of Event.cancelable is true, then preventDefault()
	 * can be used to cancel the event; otherwise, preventDefault() has no effect.
	 * @see #cancelable
	 * @see #isDefaultPrevented
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function preventDefault():Void;
	
	/**
	 * Prevents processing of any event listeners in nodes subsequent to the current node in the event flow.
	 * This method does not affect any event listeners in the current node (currentTarget). In contrast, the stopImmediatePropagation()
	 * method prevents processing of event listeners in both the current node and subsequent nodes. Additional calls to this
	 * method have no effect. This method can be called in any phase of the event flow.<br/>
	 * Note: This method does not cancel the behavior associated with this event; see preventDefault() for that functionality.
	 * @see #stopImmediatePropagation()
	 * @see #preventDefault()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function stopPropagation():Void;
	
	/**
	 * Prevents processing of any event listeners in the current node and any subsequent nodes in the event flow.
	 * This method takes effect immediately, and it affects event listeners in the current node. In contrast, the
	 * stopPropagation() method doesn't take effect until all the event listeners in the current node finish processing.<br/>
	 * Note: This method does not cancel the behavior associated with this event; see preventDefault() for that functionality.
	 * @see #stopPropagation()
	 * @see #preventDefault()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function stopImmediatePropagation():Void;
}