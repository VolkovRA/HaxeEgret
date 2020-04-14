package egret.events;

import js.lib.Function;

/**
 * The EventDispatcher class is the base class for all classes that dispatchEvent events. The EventDispatcher class implements
 * the IEventDispatcher interface and is the base class for the DisplayObject class. The EventDispatcher class allows
 * any object on the display list to be an event target and as such, to use the methods of the IEventDispatcher interface.
 * Event targets are an important part of the Egret event model. The event target serves as the focal point for how events
 * flow through the display list hierarchy. When an event such as a touch tap, Egret dispatches an event object into the
 * event flow from the root of the display list. The event object then makes its way through the display list until it
 * reaches the event target, at which point it begins its return trip through the display list. This round-trip journey
 * to the event target is conceptually divided into three phases: <br/>
 * the capture phase comprises the journey from the root to the last node before the event target's node, the target
 * phase comprises only the event target node, and the bubbling phase comprises any subsequent nodes encountered on
 * the return trip to the root of the display list. In general, the easiest way for a user-defined class to gain event
 * dispatching capabilities is to extend EventDispatcher. If this is impossible (that is, if the class is already extending
 * another class), you can instead implement the IEventDispatcher interface, create an EventDispatcher member, and write simple
 * hooks to route calls into the aggregated EventDispatcher.
 * @see egret.IEventDispatcher
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.EventDispatcher")
extern class EventDispatcher extends HashObject implements IEventDispatcher 
{
	/**
	 * Create an instance of the EventDispatcher class.
	 * @param	target	The target object for events dispatched to the EventDispatcher object. This parameter is used when
	 * 					the EventDispatcher instance is aggregated by a class that implements IEventDispatcher; it is necessary so that the
	 * 					containing object can be the target for events. Do not use this parameter in simple cases in which a class extends EventDispatcher.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(?target:IEventDispatcher);
	
	/**
	 * Registers an event listener object with an EventDispatcher object so that the listener receives notification of an
	 * event. You can register event listeners on all nodes in the display list for a specific type of event, phase,
	 * and priority.After you successfully register an event listener, you cannot change its priority through additional
	 * calls to on(). To change a listener's priority, you must first call removeEventListener(). Then you can register the
	 * listener again with the new priority level.After the listener is registered, subsequent calls to on() with a
	 * different value for either type or useCapture result in the creation of a separate listener registration. <br/>
	 * When you no longer need an event listener, remove it by calling EventDispatcher.removeEventListener(); otherwise, memory
	 * problems might result. Objects with registered event listeners are not automatically removed from memory because
	 * the garbage collector does not remove objects that still have references.Copying an EventDispatcher instance does
	 * not copy the event listeners attached to it. (If your newly created node needs an event listener, you must attach
	 * the listener after creating the node.) However, if you move an EventDispatcher instance, the event listeners attached
	 * to it move along with it.If the event listener is being registered on a node while an event is also being processed
	 * on this node, the event listener is not triggered during the current phase but may be triggered during a later phase
	 * in the event flow, such as the bubbling phase.If an event listener is removed from a node while an event is being
	 * processed on the node, it is still triggered by the current actions. After it is removed, the event listener is
	 * never invoked again (unless it is registered again for future processing).
	 * @param	type		The type of event.
	 * @param	listener	The listener function that processes the event. This function must accept an event object as
     * 						its only parameter and must return nothing, as this example shows: function(evt:Event):void  The function can
     * 						have any name.
	 * @param	thisObject	The listener function's "this".
	 * @param	useCapture	Determines whether the listener works in the capture phase or the bubbling phases. If useCapture
	 *						is set to true, the listener processes the event only during the capture phase and not in the bubbling phase.
	 *						If useCapture is false, the listener processes the event only during the bubbling phase. To listen for the event
	 *						in all three phases, call on() twice, once with useCapture set to true, then again with useCapture set to false.
	 * @param	priority	The priority level of the event listener. Priorities are designated by a integer. The higher
	 *						the number, the higher the priority. All listeners with priority n are processed before listeners of priority n-1.
	 *						If two or more listeners share the same priority, they are processed in the order in which they were added.
	 *						The default priority is.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function addEventListener(type:String, listener:Function, thisObject:Dynamic, ?useCapture:Bool, ?priority:Float):Void;
	
	/**
	 * Registers an event listener object with an EventDispatcher object so that the listener receives notification of an
	 * event. Different from the on() method,the listener receives notification only once,and then it will be removed
	 * automatically.
	 * @param	type		The type of event.
	 * @param	listener	The listener function that processes the event. This function must accept an event object as
	 * 						its only parameter and must return nothing, as this example shows: function(evt:Event):void  The function can
	 * 						have any name.
	 * @param	thisObject	The listener function's "this".
	 * @param	useCapture	Determines whether the listener works in the capture phase or the bubbling phases. If useCapture
	 * 						is set to true, the listener processes the event only during the capture phase and not in the bubbling phase.
	 * 						If useCapture is false, the listener processes the event only during the bubbling phase. To listen for the event
	 * 						in all three phases, call on() twice, once with useCapture set to true, then again with useCapture set to false.
	 * @param	priority	The priority level of the event listener. Priorities are designated by a integer. The higher
	 * 						the number, the higher the priority. All listeners with priority n are processed before listeners of priority n-1.
	 * 						If two or more listeners share the same priority, they are processed in the order in which they were added.
	 * 						The default priority is.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function once(type:String, listener:Function, thisObject:Dynamic, ?useCapture:Bool, ?priority:Float):Void;
	
	/**
	 * Removes a listener from the EventDispatcher object. If there is no matching listener registered with the
	 * EventDispatcher object, a call to this method has no effect.
	 * @param	type		The type of event.
	 * @param	listener	The listener object to remove.
	 * @param	thisObject	The listener function's "this".
	 * @param	useCapture	Specifies whether the listener was registered for the capture phase or the bubbling phases.
	 * 						If the listener was registered for both the capture phase and the bubbling phases, two calls to removeEventListener()
	 * 						are required to remove both: one call with useCapture set to true, and another call with useCapture set to false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function removeEventListener(type:String, listener:Function, thisObject:Dynamic, ?useCapture:Bool):Void;
	
	/**
	 * Checks whether the EventDispatcher object has any listeners registered for a specific type of event. This allows
	 * you to determine where an EventDispatcher object has altered handling of an event type in the event flow hierarchy.
	 * To determine whether a specific event type will actually trigger an event listener, use IEventDispatcher.willTrigger().
	 * The difference between hasEventListener() and willTrigger() is that hasEventListener() examines only the object to
	 * which it belongs, whereas willTrigger() examines the entire event flow for the event specified by the type parameter.
	 * @param	type	The type of event.
	 * @return	A value of true if a listener of the specified type is registered; false otherwise.
	 * @see	#willTrigger()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function hasEventListener(type:String):Bool;
	
	/**
	 * Dispatches an event into the event flow.
	 * The event target is the EventDispatcher object upon which dispatchEvent() is called.
	 * @param	event The event object dispatched into the event flow.
	 * @return	A value of true unless preventDefault() is called on the event, in which case it returns false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function dispatchEvent(event:Event):Bool;
	
	/**
	 * Distribute a specified event parameters.
	 * @param	type		The type of the event. Event listeners can access this information through the inherited type property.
	 * @param	bubbles		Determines whether the Event object bubbles. Event listeners can access this information through
	 * 						the inherited bubbles property.
	 * @param	data		Data.
	 * @param	cancelable	Determines whether the Event object can be canceled. The default values is false.
	 */
	public function dispatchEventWith(type:String, ?bubbles:Bool, ?data:Dynamic, ?cancelable:Bool):Bool;
	
	/**
	 * Checks whether an event listener is registered with this EventDispatcher object or any of its ancestors for the
	 * specified event type. This method returns true if an event listener is triggered during any phase of the event
	 * flow when an event of the specified type is dispatched to this EventDispatcher object or any of its descendants.
	 * @param	type The type of event.
	 * @return	A value of true if a listener of the specified type will be triggered; false otherwise.
	 * @see #hasEventListener()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function willTrigger(type:String):Bool;
}