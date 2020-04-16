package egret.text;

/**
 * The VerticalAlign class defines the possible values for the vertical alignment.
 * @see TextField#verticalAlign
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract VerticalAlign(String) to String
{
	/**
	 * Vertically align content to the top of the container.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var TOP = "top";
	
	/**
	 * Vertically align content to the bottom of the container.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var BOTTOM = "bottom";
	
	/**
	 * Vertically align content in the middle of the container.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var MIDDLE = "middle";
	
	/**
	 * Vertical alignment with both edges
	 * Note: TextFiled does not support this alignment method.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var JUSTIFY = "justify";
	
	/**
	 * Align the content of the child items, relative to the container.
	 * This operation will adjust uniformly the size of all the child items to be the Content Height of the container.
	 * The Content Height of the container is the size of the max. child item.
	 * If the size of all child items are less than the height of the container, they will be adjusted to the height of the container.
	 * Note: TextFiled does not support this alignment method.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var CONTENT_JUSTIFY = "contentJustify";
}