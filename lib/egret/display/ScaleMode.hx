package egret.display;

/**
 * The LineScaleMode class provides values for the scaleMode parameter in the Graphics.lineStyle() method.
 * @author VolkovRA
 */
@:enum abstract ScaleMode(String) to String
{
	/**
	 * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line always scales when the object is scaled (the default).
	 */
	var NORMAL = "normal";
	
	/**
	 * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line scales only horizontally.
	 */
	var HORIZONTAL = "horizontal";
	
	/**
	 * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line scales only vertically.
	 */
	var VERTICAL = "vertical";
	
	/**
	 * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line never scales.
	 */
	var NONE = "none";
}