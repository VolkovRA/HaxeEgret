package egret.display;

/**
 * The OrientationMode class provides values for the initial rotation mode of the stage.
 * @author VolkovRA
 */
@:enum abstract OrientationMode(String) to String
{
	/**
	 * Adapt to the screen.
	 */
	var AUTO = "auto";
	
	/**
	 * Default vertical screen.
	 */
	var PORTRAIT = "portrait";
	
	/**
	 * The default horizontal screen, the stage rotates 90 degrees clockwise.
	 */
	var LANDSCAPE = "landscape";
	
	/**
	 * The default horizontal screen, the stage rotates 90 degrees counterclockwise.
	 */
	var LANDSCAPE_FLIPPED = "landscapeFlipped";
}