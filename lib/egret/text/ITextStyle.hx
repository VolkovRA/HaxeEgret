package egret.text;

/**
 * Text Style.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
typedef ITextStyle =
{
	/**
	 * Text color.
	 * See http://edn.egret.com/cn/docs/page/146 Basic structure of mixed text in multiple styles.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var textColor:Int;
	
	/**
	 * Stroke color.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var strokeColor:Int;
	
	/**
	 * Size.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var size:Float;
	
	/**
	 * Stroke width.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var stroke:Float;
	
	/**
	 * Whether bold.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var bold:Bool;
	
	/**
	 * Whether italic.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var italic:Bool;
	
	/**
	 * FontFamily.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var fontFamily:String;
	
	/**
	 * Link events or address.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var href:String;
	
	/**
	 * Is underlined.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var underline:Bool;
}