package egret.display;

/**
 * The GradientType class provides values for the type parameter in the beginGradientFill() methods of the Graphics class.
 * @see Graphics#beginGradientFill()
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract GradientType(String) to String
{
	/**
	 * Value used to specify a linear gradient fill.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var LINEAR = "linear";
	
	/**
	 * Value used to specify a radial gradient fill.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var RADIAL = "radial";
}