package egret.filters;

/**
 * Use the GlowFilter class to apply glow effects to display objects.
 * When the distance and angle properties of the projection filter are set to 0, the glow filter is very similar to the projection filter.
 * @version Egret 3.1.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.GlowFilter")
extern class GlowFilter extends Filter 
{
	/**
	 * Initializes a new GlowFilter instance.
	 * @param	color		The color of the glow. Valid values are in the hexadecimal format 0xRRGGBB. The default value is 0xFF0000.
	 * @param	alpha		The alpha transparency value for the color. Valid values are 0 to 1. For example, .25 sets a transparency value of 25%. The default value is 1.
	 * @param	blurX		The amount of horizontal blur. Valid values are 0 to 255 (floating point).
	 * @param	blurY		The amount of vertical blur. Valid values are 0 to 255 (floating point).
	 * @param	strength	The strength of the imprint or spread. The higher the value, the more color is imprinted and the stronger the contrast between the glow and the background. Valid values are 0 to 255.
	 * @param	quality		The number of times to apply the filter.
	 * @param	inner		Specifies whether the glow is an inner glow. The value true indicates an inner glow. The default is false, an outer glow (a glow around the outer edges of the object).
	 * @param	knockout	Specifies whether the object has a knockout effect. A value of true makes the object's fill transparent and reveals the background color of the document. The default value is false (no knockout effect).
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public function new(	color:Int		= 0xff0000,
							alpha:Float		= 1,
							blurX:Float		= 6,
							blurY:Float		= 6,
							strength:Float	= 2,
							quality:Float	= 1,
							inner:Bool		= false,
							knockout:Bool	= false
	);
	
	/**
	 * The color of the glow.
	 * Default: 0xff0000
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var color:Int;
	
	/**
	 * The alpha transparency value for the color.
	 * Default: 1
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var alpha:Float;
	
	/**
	 * The amount of horizontal blur.
	 * Default: 6
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var blurX:Float;
	
	/**
	 * The amount of vertical blur.
	 * Default: 6
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var blurY:Float;
	
	/**
	 * The strength of the imprint or spread.
	 * Default: 2
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var strength:Float;
	
	/**
	 * The number of times to apply the filter.
	 * Default: 1
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var quality:Float;
	
	/**
	 * Specifies whether the glow is an inner glow.
	 * Default: false
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var inner:Bool;
	
	/**
	 * Specifies whether the object has a knockout effect.
	 * Default: false
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var knockout:Bool;
}