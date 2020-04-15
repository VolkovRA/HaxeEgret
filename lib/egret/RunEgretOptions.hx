package egret;

import js.html.CanvasRenderingContext2D;

/**
 * Options of: Egret.runEgret() method.
 * @author VolkovRA
 */
typedef RunEgretOptions =
{
	@:optional var renderMode:String;
	@:optional var audioType:Float;
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