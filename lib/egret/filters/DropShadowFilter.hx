package egret.filters;

/**
 * You can use the DropShadowFilter class to add a projection to the display object.
 * @version Egret 3.1.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.DropShadowFilter")
extern class DropShadowFilter extends GlowFilter 
{
	/**
	 * Initializes a new DropShadowFilter instance.
	 * @param	distance	The offset distance of the bevel. Valid values are in pixels (floating point).
	 * @param	angle		The angle of the bevel. Valid values are from 0 to 360°.
	 * @param	color		The color of the glow. Valid values are in the hexadecimal format 0xRRGGBB. The default value is 0xFF0000.
	 * @param	alpha		The alpha transparency value for the color. Valid values are 0 to 1. For example, .25 sets a transparency value of 25%. The default value is 1.
	 * @param	blurX		The amount of horizontal blur. Valid values are 0 to 255 (floating point).
	 * @param	blurY		The amount of vertical blur. Valid values are 0 to 255 (floating point).
	 * @param	strength	The strength of the imprint or spread. The higher the value, the more color is imprinted and the stronger the contrast between the glow and the background. Valid values are 0 to 255.
	 * @param	quality		The number of times to apply the filter.
	 * @param	inner		Specifies whether the glow is an inner glow. The value true indicates an inner glow. The default is false, an outer glow (a glow around the outer edges of the object).
	 * @param	knockout	Specifies whether the object has a knockout effect. A value of true makes the object's fill transparent and reveals the background color of the document. The default value is false (no knockout effect).
	 * @param	hideObject	Indicates whether or not the object is hidden. The value true indicates that the object itself is not drawn; only the shadow is visible. The default is false, meaning that the object is shown.
	 */
	public function new(	distance:Float	= 4,
							angle:Float		= 45,
							color:Float		= 0xff0000,
							alpha:Float		= 1,
							blurX:Float		= 6,
							blurY:Float		= 6,
							strength:Float	= 2,
							quality:Float	= 1,
							inner:Bool		= false,
							knockout:Bool	= false,
							hideObject:Bool	= false
	);
	
	/**
	 * The offset distance of the bevel.
	 * Default: 4
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var distance:Float;
	
	/**
	 * The angle of the bevel.
	 * Default: 45
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var angle:Float;
	
	/**
	 * Indicates whether or not the object is hidden.
	 * Default: false
	 * @version Egret 3.1.4
	 * @platform Web
	 */
	public var hideObject:Bool;
}