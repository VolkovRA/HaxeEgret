package egret.events;

/**
 * A Timer object dispatches a TimerEvent objects whenever the Timer object reaches the interval specified by the Timer.delay property.
 * @see Timer
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.TimerEvent")
extern class TimerEvent extends Event 
{
	/**
	 * Creates an Event object with specific information relevant to timer events.
	 * @param	type		The type of the event. Event listeners can access this information through the inherited type property.
	 * @param	bubbles		Determines whether the Event object bubbles.
	 * 						Event listeners can access this information through the inherited bubbles property.
	 * @param	cancelable	Determines whether the Event object can be canceled.
	 * 						Event listeners can access this information through the inherited cancelable property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Dispatched whenever a Timer object reaches an interval specified according to the Timer.delay property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var TIMER:String = "timer";
	
	/**
	 * Dispatched whenever it has completed the number of requests set by Timer.repeatCount.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var TIMER_COMPLETE:String = "timerComplete";
	
	/**
	 * Uses a specified target to dispatchEvent an event.
	 * Using this method can reduce the number of reallocate event objects, which allows you to get better code execution performance.
	 * @param	target		The event target.
	 * @param	type		The type of the event. Event listeners can access this information through the inherited type property.
	 * @param	bubbles		Determines whether the Event object bubbles. Event listeners can access this information through the inherited bubbles property.
	 * @param	cancelable	Determines whether the Event object can be canceled. Event listeners can access this information through the inherited cancelable property.
	 * 
	 * @see Event.create()
	 * @see Event.release()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function dispatchTimerEvent(target:IEventDispatcher, type:String, bubbles:Bool = false, cancelable:Bool = false):Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Instructs Egret runtime to render after processing of this event completes, if the display list has been modified.
	 * Example<code>
	 * function onTimer(event:TimerEvent):Void {
	 *     if (40 < mySp.x && mySp.x < 375) {
	 *         mySp.x -= 50;
	 *     } else {
	 *         mySp.x = 374;
	 *     }
	 *     event.updateAfterEvent();
	 * }
	 *
	 * var moveTimer:Timer = new Timer(50, 250);
	 * moveTimer.addEventListener(TimerEvent.TIMER, onTimer);
	 * moveTimer.start();
	 * </code>
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function updateAfterEvent():Void;
}