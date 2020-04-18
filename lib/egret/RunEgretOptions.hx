package egret;

import js.html.CanvasRenderingContext2D;

/**
 * Options of: Egret.runEgret() method.
 * @author VolkovRA
 */
typedef RunEgretOptions =
{
	@:optional var renderMode:RenderMode;
	@:optional var audioType:AudioType;
	@:optional var screenAdapter:Dynamic;
	@:optional var antialias:Bool;
	@:optional var canvasScaleFactor:Float;
	@:optional var calculateCanvasScaleFactor:CanvasRenderingContext2D->Float;
	/**
	 * The following are for mini-games only.
	 */
	@:optional var entryClassName:String;
	@:optional var scaleMode:String;
	@:optional var frameRate:Float;
	@:optional var contentWidth:Float;
	@:optional var contentHeight:Float;
	@:optional var orientation:String;
	@:optional var maxTouches:Float;
	@:optional var showFPS:Bool;
	@:optional var showLog:Bool;
	@:optional var fpsStyles:String;	
}

/**
 * Engine render mode.
 * @author VolkovRA
 */
@:enum abstract RenderMode(String) to String
{
	/**
	 * Canvas render mode.
	 */
	var CANVAS = "canvas";
	
	/**
	 * WEBGL Render mode.
	 */
	var WEBGL = "webgl";
}

/**
 * The use of audio type.
 * More information: https://www.cnblogs.com/martinl/p/6005424.html (China's lang!)
 * @author VolkovRA
 */
@:enum abstract AudioType(Int) to Int
{
	/**
	 * The default.
	 */
	var DEFAULT = 0;
	
	/**
	 * Web audio.
	 */
	var WEB_AUDIO = 2;
	
	/**
	 * Audio.
	 */
	var AUDIO = 3;
}