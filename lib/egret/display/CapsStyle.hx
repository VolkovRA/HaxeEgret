package egret.display;

/**
 * The CapsStyle enum is an enumeration of constant values that specify the caps style to use in drawing lines.
 * The constants are provided for use as values in the caps parameter of the Graphics.lineStyle() method.
 * @see Graphics#lineStyle()
 * @version Egret 2.5
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract CapsStyle(String) to String
{
	/**
	 * Used to specify no caps in the caps parameter of the Graphics.lineStyle() method.
	 * @version Egret 2.5
	 * @platform Web,Native
	 */
	var NONE = "none";
	
	/**
	 * Used to specify round caps in the caps parameter of the Graphics.lineStyle() method.
	 * @version Egret 2.5
	 * @platform Web,Native
	 */
	var ROUND = "round";
	
	/**
	 * Used to specify square caps in the caps parameter of the Graphics.lineStyle() method.
	 * @version Egret 2.5
	 * @platform Web,Native
	 */
	var SQUARE = "square";
}