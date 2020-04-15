package egret.display;

import egret.HashObject;
import egret.geom.Rectangle;
import js.lib.ArrayBuffer;

/**
 * The Texture class encapsulates different image resources on different platforms.
 * In HTML5, resource is an HTMLElement object
 * In OpenGL / WebGL, resource is a texture ID obtained after the GPU is submitted
 * The Texture class encapsulates the details implemented on the underlayer. Developers just need to focus on interfaces
 * @see http://edn.egret.com/cn/docs/page/135 The use of texture packs
 * @see http://edn.egret.com/cn/docs/page/123 Several ways of access to resources
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Texture")
extern class Texture extends HashObject 
{
	/**
	* Create an egret.Texture object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Whether to destroy the corresponding BitmapData when the texture is destroyed.
	 * Default: true
	 * @version Egret 5.0.8
	 * @platform Web,Native
	 */
	public var disposeBitmapData:Bool;
	
	/**
	 * Texture width.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textureWidth(default, null):Float;
	
	/**
	 * Texture height.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textureHeight(default, null):Float;
	
	/**
	 * The BitmapData object being referenced.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bitmapData:BitmapData;
	
	/**
	 * The KTX object being referenced.
	 * @version Egret 5.2.21
	 * @platform Web,Native
	 */
	public var ktxData:ArrayBuffer;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Obtain the color value for the specified pixel region.
	 * @param	x		The x coordinate of the pixel region.
	 * @param	y		The y coordinate of the pixel region.
	 * @param	width	The width of the pixel region.
	 * @param	height	The height of the pixel region.
	 * @return	Specifies the color value for the pixel region.
	 * @version Egret 3.2.1
	 * @platform Web,Native
	 */
	public function getPixels(x:Float, y:Float, ?width:Float, ?height:Float):Array<Float>;
	
	/**
	 * Crop designated area and save it as image.
	 * Native support only "image / png" and "image / jpeg".
	 * Web browser because of the various implementations are not the same, it is recommended to use only these two kinds.
	 * @param	type		Type conversions, such as "image / png".
	 * @param	filePath	The path name of the image (the home directory for the game's private space, the path can not have "../",Web supports only pass names.)
	 * @param	rect		The need to convert the area.
	 * @version Egret 2.4
	 * @platform Native
	 */
	public function saveToFile(type:String, filePath:String, ?rect:Rectangle):Void;
	
	/**
	 * Convert base64 string, if the picture (or pictures included) cross-border or null.
	 * @param	type			Type conversions, such as "image / png".
	 * @param	rect			The need to convert the area.
	 * @param	encoderOptions	Coding parameters.
	 * @return	Base64 string.
	 */
	public function toDataURL(type:String, ?rect:Rectangle, ?encoderOptions:Dynamic):String;
	
	/**
	 * dispose texture
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function dispose():Void;
	
	@:deprecated
	@:noCompletion
	public function getPixel32(x:Float, y:Float):Array<Float>;
}