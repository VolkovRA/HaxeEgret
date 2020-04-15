package egret.tween;

import js.lib.Function;

/**
 * Tween parameters, support loop, onChange, onChangeObj.
 * @author VolkovRA
 */
typedef TweenOptions =
{
	@:optional var loop:Bool;
	@:optional var onChange:Function;
	@:optional var onChangeObj:Dynamic;
}