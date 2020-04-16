package egret.utils;

/**
 * The Capabilities class provides properties that describe the system and runtime that are hosting the application.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Capabilities")
extern class Capabilities 
{
	/**
	 * Version of Egret.
	 * @version Egret 3.2.0
	 * @platform Web,Native
	 */
	static public var engineVersion(default, null):String;
	
	/**
	 * Specifies the language code of the system on which the content is running.
	 * The language is specified as a lowercase two-letter language code from ISO 639-1.
	 * For Chinese, an additional uppercase two-letter country code from ISO 3166 distinguishes between Simplified and Traditional Chinese.
	 * The following table lists the possible values, but not limited to them:
	 *   1. Simplified	Chinese	zh-CN
	 *   2. Traditional	Chinese	zh-TW
	 *   3. English		en
	 *   4. Japanese	ja
	 *   5. Korean		ko
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var language(default, null):String;
	
	/**
	 * Specifies whether the system is running in a mobile device. (such as a mobile phone or tablet)
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var isMobile(default, null):Bool;
	
	/**
	 * Specifies the current operating system.
	 * The os property can return the following strings:
	 *   1. iPhone			"iOS"
	 *   2. Android Phone	"Android"
	 *   3. Windows Phone	"Windows Phone"
	 *   4. Windows Desktop	"Windows PC"
	 *   5. Mac Desktop		"Mac OS"
	 *   6. Unknown OS		"Unknown"
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var os(default, null):String;
	
	/**
	 * It indicates the current type of operation. runtimeType property returns the following string:
	 *   1. Run on Web				RuntimeType.WEB
	 *   2. Run on Runtime2.0		RuntimeType.RUNTIME2
	 *   3. Run on WeChat mini game	RuntimeType.WXGAME
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var runtimeType(default, null):RuntimeType;
	
	/**
	 * Current render mode.
	 * @version Egret 3.0.7
	 * @platform Web,Native
	 */
	static public var renderMode(default, null):String;
	
	/**
	 * Clients border width.
	 * The value before the document class initialization is always 0.
	 * This value will change after the distribution Event.RESIZE and StageOrientationEvent.ORIENTATION_CHANGE.
	 * @version Egret 3.1.3
	 * @platform Web,Native
	 */
	static public var boundingClientWidth(default, null):Float;
	
	/**
	 * Clients border height.
	 * The value before the document class initialization is always 0.
	 * This value will change after the distribution Event.RESIZE and StageOrientationEvent.ORIENTATION_CHANGE.
	 * @version Egret 3.1.3
	 * @platform Web,Native
	 */
	static public var boundingClientHeight(default, null):Float;
	
	/**
	 * Supported compressed texture.
	 * @version Egret 5.2.19
	 * @platform Web,Native
	 */
	static public var supportedCompressedTexture:Dynamic;
}