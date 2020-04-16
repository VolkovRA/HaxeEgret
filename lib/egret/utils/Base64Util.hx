package egret.utils;

import js.lib.ArrayBuffer;

/**
* The Base64Util class provides methods for encoding and decoding base64.
* @version Egret 2.4
* @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Base64Util")
extern class Base64Util 
{
	/**
	 * Encode base64.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function encode(arraybuffer:ArrayBuffer):String;
	
	/**
	 * Decode base64.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function decode(base64:String):ArrayBuffer;
}