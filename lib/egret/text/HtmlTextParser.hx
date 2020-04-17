package egret.text;

import egret.text.ITextElement;

/**
 * Convert the text in html format to the object that can be assigned to the TextField#textFlow property
 * See: http://edn.egret.com/cn/docs/page/146 Text mixed in a variety of style.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.HtmlTextParser")
extern class HtmlTextParser 
{
	/**
	 * Creates a new HtmlTextParser instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	/**
	 * Convert the text in html format to the object that can be assigned to the TextField#textFlow property.
	 * @param	htmltext	Text in html.
	 * @return	Parsed data for TextField#textFlow property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function parse(htmltext:String):Array<ITextElement>;
}