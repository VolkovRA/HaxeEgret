package egret.text;

/**
 * The HorizontalAlign class defines the possible values for the horizontal alignment.
 * @see TextField#textAlign
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract HorizontalAlign(String) to String
{
	/**
	 * Horizontally align content to the left of the container.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var LEFT = "left";
	
	/**
	 * Horizontally align content to the right of the container.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var RIGHT = "right";
	
	/**
	 * Horizontally align content in the center of the container.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var CENTER = "center";
	
	/**
	 * Horizontal alignment with both edges.
	 * Note: TextFiled does not support this alignment method.
	 * @constant HorizontalAlign.JUSTIFY
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var JUSTIFY = "justify";
	
	/**
	 * Align the content of the child items, relative to the container.
	 * This operation will adjust uniformly the size of all the child items to be the Content Width of the container.
	 * The Content Width of the container is the size of the max. child item.
	 * If the size of all child items are less than the width of the container, they will be adjusted to the width of the container.
	 * Note: TextFiled does not support this alignment method.
	 * @constant HorizontalAlign.CONTENT_JUSTIFY
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var CONTENT_JUSTIFY = "contentJustify";
}