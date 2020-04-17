package egret.utils;

/**
 * Number utils.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.NumberUtils")
extern class NumberUtils 
{
	/**
	 * Judge whether it is a numerical value.
	 * @param	value Parameter that needs to be judged.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function isNumber(value:Dynamic):Bool;
	
	/**
	 * Obtain the approximate sin value of the corresponding angle value.
	 * @param	value Angle value.
	 * @return	Sin value.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function sin(value:Float):Float;
	
	/**
	 * Obtain the approximate cos value of the corresponding angle value.
	 * @param	value Angle value.
	 * @return	Cos value.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function cos(value:Float):Float;
}