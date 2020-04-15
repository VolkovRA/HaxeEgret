package egret.tween;

import egret.events.EventDispatcher;
import js.lib.Function;

/**
 * Tween is the animation easing class of Egret.
 * @see http://edn.egret.com/cn/docs/page/576 Tween ease animation
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Tween")
extern class Tween extends EventDispatcher 
{
	/**
	 * Cannot create instance.
	 */
	private function new(target:Dynamic, props:Dynamic, pluginData:Dynamic);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Activate an object and add a Tween animation to the object.
	 * @param	target		The object to be activated.
	 * @param	props		Parameters, support loop onChange onChangeObj.
	 * @param	pluginData	Write realized.
	 * @param	overrided	Whether to remove the object before adding a tween. Not recommended, you can use Tween.removeTweens(target) instead.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function get(target:Dynamic, props:TweenOptions = null, pluginData:Dynamic = null, overrided:Bool = false):Tween;
	
	/**
	 * Delete all Tween animations from an object.
	 * @param	target The object whose Tween to be deleted.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function removeTweens(target:Dynamic):Void;
	
	/**
	 * Pause all Tween animations of a certain object.
	 * @param	target The object whose Tween to be paused.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function pauseTweens(target:Dynamic):Void;
	
	/**
	 * Resume playing all easing of a certain object.
	 * @param	target The object whose Tween to be resumed.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function resumeTweens(target:Dynamic):Void;
	
	/**
	 * Delete all Tween.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function removeAllTweens():Void;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Whether setting is paused.
	 * @param	value Whether to pause.
	 * @return	Tween object itself.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function setPaused(value:Bool):Tween;
	
	/**
	 * Wait the specified milliseconds before the execution of the next animation.
	 * @param	duration	Waiting time, in milliseconds.
	 * @param	passive		Whether properties are updated during the waiting time.
	 * @return	Tween object itself.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function wait(duration:Float, passive:Bool = false):Tween;
	
	/**
	 * Modify the property of the specified object to a specified value.
	 * @param	props		Property set of an object.
	 * @param	duration	Duration.
	 * @param	ease		Easing algorithm.
	 * @return	Tween object itself.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function to(props:Dynamic, duration:Float = 0, ease:EaseFunc = null):Tween;
	
	/**
	 * Execute callback function.
	 * Example:<code>
	 * Tween.get(display).call(function (a:Float, b:String) {
	 *     trace("a: " + a); // the first parameter passed 233
	 *     trace("b: " + b); // the second parameter passed “hello”
	 * }, this, [233, "hello"]);
	 * </code>
	 * @param	callback	Callback method.
	 * @param	thisObj		This action scope of the callback method.
	 * @param	params		Parameter of the callback method.
	 * @return	Tween object itself.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function call(callback:Function, ?thisObj:Dynamic, ?params:Array<Dynamic>):Tween;
	
	/**
	 * Now modify the properties of the specified object to the specified value.
	 * @param	props	Property set of an object.
	 * @param	target	The object whose Tween to be resumed.
	 * @return	Tween object itself.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function set(props:Dynamic, ?target:Dynamic):Tween;
	
	/**
	 * Execute tween.
	 * @param	tween The Tween object to be operated. Default: this.
	 * @return	Tween object itself.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function play(?tween:Tween):Tween;
	
	/**
	 * Pause tween.
	 * @param	tween The Tween object to be operated. Default: this.
	 * @return	Tween object itself.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function pause(?tween:Tween):Tween;
}