package egret.display;

import egret.HashObject;
import js.lib.ArrayBuffer;

/**
 * A BitmapData object contains an array of pixel data.
 * This data can represent either a fully opaque bitmap or a transparent bitmap that contains alpha channel data.
 * Either type of BitmapData object is stored as a buffer of 32-bit integers.
 * Each 32-bit integer determines the properties of a single pixel in the bitmap.
 * Each 32-bit integer is a combination of four 8-bit channel values (from 0 to 255) that describe the alpha transparency
 * and the red, green, and blue (ARGB) values of the pixel. (For ARGB values, the most significant byte represents the
 * alpha channel value, followed by red, green, and blue.)
 * @see egret.Bitmap
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.BitmapData")
extern class BitmapData extends HashObject 
{
	/**
	 * Initializes a BitmapData object to refer to the specified source object.
	 * @param	source The source object being referenced.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(source:Dynamic);
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Create BitmapData.
	 * @param	type		The the specified source object type.
	 * @param	data		Source data, for base64 it is String, for buffer - binary.
	 * @param	callback	Callback.
	 */
	@:overload(function(type:BitmapDataSourceType, data:String, callback:BitmapData->Void = null):BitmapData {})
	static public function create(type:BitmapDataSourceType, data:ArrayBuffer, callback:BitmapData->Void = null):BitmapData;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The width of the bitmap image in pixels.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var width(default, null):Int;
	
	/**
	 * The height of the bitmap image in pixels.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var height(default, null):Int;
	
	/**
	 * Texture format.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var format:String;
	
	/**
	 * The source object.
	 */
	public var source:Dynamic;
}

/**
 * BitmapData specified source object type.
 */
@:enum abstract BitmapDataSourceType(String) to String
{
	/**
	 * Binary source data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var BUFFER = "arraybuffer";
	
	/**
	 * Base64 source data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var BASE64 = "base64";
}