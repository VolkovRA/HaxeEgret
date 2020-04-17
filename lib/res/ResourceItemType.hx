package res;

/**
 * The ResourceItemType enum defines a pattern enumeration for `type` property of ResourceItem.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract ResourceItemType(String) to String
{
	/**
	 * XML file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var XML = "xml";
	
	/**
	 * Picture file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var IMAGE = "image";
	
	/**
	 * Binary file.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var BIN = "bin";
	
	/**
	 * Text file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var TEXT = "text";
	
	/**
	 * JSON file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var JSON = "json";
	
	/**
	 * SpriteSheet file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var SHEET = "sheet";
	
	/**
	 * BitmapTextSpriteSheet file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var FONT = "font";
	
	/**
	 * Sound file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var SOUND = "sound";
}