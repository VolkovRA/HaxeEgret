package egret.filters;

/**
 * The ColorMatrixFilter class lets you apply a 4 x 5 matrix transformation on the RGBA color and alpha values of
 * every pixel in the input image to produce a result with a new set of RGBA color and alpha values.
 * It allows saturation changes, hue rotation, luminance to alpha, and various other effects.
 * @version Egret 3.1.0
 * @platform Web
 * @author VolkovRA
 */
@:native("egret.ColorMatrixFilter")
extern class ColorMatrixFilter extends Filter 
{
	/**
	 * Initializes a ColorMatrixFilter object.
	 * @version Egret 3.1.0
	 * @platform Web
	 * @param	matrix
	 */
	public function new(?matrix:Array<Float>);
	
	/**
	 * A comma delimited list of 20 doubles that comprise a 4x5 matrix applied to the rendered element.
	 * The matrix is in row major order -- that is, the first five elements are multipled by the vector
	 * [srcR,srcG,srcB,srcA,1] to determine the output red value, the second five determine the output green value, etc.
	 * The value must either be an array or comma delimited string of 20 numbers.
	 * @version Egret 3.1.0
	 * @platform Web
	 */
	public var matrix:Array<Float>;
}