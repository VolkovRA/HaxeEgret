package egret.utils;

import egret.events.EventDispatcher;

/**
 * The Timer class is the interface to timers, which let you run code on a specified time sequence.
 * Use the start() method to start a timer. Add an event listener for the timer event to set up code to be run on the timer interval.
 * You can create Timer objects to run once or repeat at specified intervals to execute code on a schedule.
 * Depending on the framerate or the runtime environment (available memory and other factors), the runtime may dispatchEvent events at
 * slightly offset intervals.
 * @see egret.TimerEvent
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Timer")
extern class Timer extends EventDispatcher 
{
	/**
	 * Constructs a new Timer object with the specified delay and repeatCount states.
	 * @param	delay		The delay between timer events, in milliseconds. A delay lower than 20 milliseconds is not recommended.
	 * 						Timer frequency is limited to 60 frames per second, meaning a delay lower than 16.6 milliseconds causes runtime problems.
	 * @param	repeatCount	Specifies the number of repetitions.
	 * 						If zero, the timer repeats indefinitely.
	 * 						If nonzero, the timer runs the specified number of times and then stops.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(delay:Float, repeatCount:Int = 0);
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The delay between timer events, in milliseconds.
	 * A delay lower than 20 milliseconds is not recommended.
	 * Note: Timer frequency is limited to 60 frames per second, meaning a delay lower than 16.6 milliseconds causes runtime problems.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var delay:Float;
	
	/**
	 * The total number of times the timer is set to run.
	 * If the repeat count is set to 0, the timer continues indefinitely, until the stop() method is invoked or the program stops.
	 * If the repeat count is nonzero, the timer runs the specified number of times.
	 * If repeatCount is set to a total that is the same or less then currentCount the timer stops and will not fire again.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var repeatCount:Int;
	
	/**
	 * The total number of times the timer has fired since it started at zero.
	 * If the timer has been reset, only the fires since the reset are counted.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var currentCount(default, null):Int;
	
	/**
	 * The timer's current state; true if the timer is running, otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var running(default, null):Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Stops the timer, if it is running, and sets the currentCount property back to 0, like the reset button of a stopwatch.
	 * Then, when start() is called, the timer instance runs for the specified number of repetitions, as set by the repeatCount value.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function reset():Void;
	
	/**
	 * Starts the timer, if it is not already running.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function start():Void;
	
	/**
	 * Stops the timer.
	 * When start() is called after stop(), the timer instance runs for the remaining number of repetitions, as set by the repeatCount property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function stop():Void;
}