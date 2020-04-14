package egret;

/**
 * The EventPhase class provides values for the eventPhase property of the Event class.
 * @author VolkovRA
 */
@:enum abstract EventPhase(Int) to Int
{
	/**
	 * The capturing phase, which is the first phase of the event flow.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var CAPTURING_PHASE = 1;
	
	/**
	 * The target phase, which is the second phase of the event flow.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var AT_TARGET = 2;
	
	/**
	 * The bubbling phase, which is the third phase of the event flow.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var BUBBLING_PHASE = 3;
}