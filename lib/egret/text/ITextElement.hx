package egret.text;

/**
 * Used to build the basic structure of text with a variety of mixed styles, mainly for setting textFlow property.
 * See http://edn.egret.com/cn/docs/page/146 Text mixed in a variety of style
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
typedef ITextElement =
{
	/**
	 * String Content.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var text:String;
	
	/**
	 * Text Style.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:optional var style:ITextStyle;
}