package egret.filters;

/**
 * The BlurFilter class lets you apply a blur visual effect to display objects.
 * A blur effect softens the details of an image. You can produce blurs that range from a softly unfocused look to
 * a Gaussian blur, a hazy appearance like viewing an image through semi-opaque glass.
 * @version Egret 3.0.1
 * @platform Web
 * @author VolkovRA
 */
@:native("egret.BlurFilter")
extern class BlurFilter extends Filter 
{
	/**
	 * Initializes a BlurFilter object.
	 * @param	blurX	The amount of horizontal blur. Valid values are 0 to 255 (floating point).
	 * @param	blurY	The amount of vertical blur. Valid values are 0 to 255 (floating point).
	 * @param	quality	The number of times to apply the filter.
	 * @version Egret 3.1.0
	 * @platform Web
	 */
	public function new(blurX:Float = 4, blurY:Float = 4, quality:Float = 1);
	
	/**
	 * The amount of horizontal blur.
	 * @version Egret 3.1.0
	 * @platform Web
	 */
	public var blurX:Float;
	
	/**
	 * The amount of vertical blur.
	 * @version Egret 3.1.0
	 * @platform Web
	 */
	public var blurY:Float;
}