package egret.display;

import egret.geom.Rectangle;

/**
 * RenderTexture is a dynamic texture.
 * @extends egret.Texture
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.RenderTexture")
extern class RenderTexture extends Texture 
{
	/**
	 * Create RenderTexture object.
	 */
	public function new();
	
	/**
	 * The specified display object is drawn as a texture.
	 * @param	displayObject	The display to draw.
	 * @param	clipBounds		Clip rect.
	 * @param	scale			Scale factor.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function drawToTexture(displayObject:DisplayObject, ?clipBounds:Rectangle, ?scale:Float):Bool;
}