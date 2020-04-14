package egret.display;

/**
 * The ChildrenSortMode class defines a pattern enumeration for children sort mode of egret.DisplayObjectContainer.
 * @version Egret 5.2.19
 * @platform Native
 * @author VolkovRA
 */
@:enum abstract ChildrenSortMode(String) to String
{
	/**
	 * Default mode.
	 * @version Egret 5.2.19
	 * @platform Native
	 */
	var DEFAULT = "default";
	
	/**
	 * Y increase mode. Automatic sorted ascending by y coordinates.
	 * @version Egret 5.2.19
	 * @platform Native
	 */
	var INCREASE_Y = "increaseY";
	
	/**
	 * Y decrease mode. Automatic sorted descending by y coordinates.
	 * @version Egret 5.2.19
	 * @platform Native
	 */
	var DECREASE_Y = "decreaseY";
}