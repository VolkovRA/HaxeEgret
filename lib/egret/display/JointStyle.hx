package egret.display;

/**
 * The JointStyle class is an enumeration of constant values that specify the joint style to use in drawing lines.
 * These constants are provided for use as values in the joints parameter of the Graphics.lineStyle() method.
 * @see Graphics#lineStyle()
 * @version Egret 2.5
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract JointStyle(String) to String
{
	/**
	 * Specifies beveled joints in the joints parameter of the Graphics.lineStyle() method.
	 * @version Egret 2.5
	 * @platform Web,Native
	 */
	var BEVEL = "bevel";
	
	/**
	 * Specifies mitered joints in the joints parameter of the Graphics.lineStyle() method.
	 * @version Egret 2.5
	 * @platform Web,Native
	 */
	var MITER = "miter";
	
	/**
	 * Specifies round joints in the joints parameter of the Graphics.lineStyle() method.
	 * @version Egret 2.5
	 * @platform Web,Native
	 */
	var ROUND = "round";
}