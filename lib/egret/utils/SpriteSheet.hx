package egret.utils;

import egret.HashObject;
import egret.display.Texture;

/**
 * SpriteSheet is a mosaic of multiple sub-bitmaps, comprising a plurality of Texture objects.
 * Each Texture object shares the set bitmap of SpriteSheet, but it points to its different areas.
 * On WebGL / OpenGL, this operation can significantly improve performance.
 * At the same time, SpriteSheet can carry out material integration easily to reduce the number of HTTP requests
 * For specification of the SpriteSheet format, see the document https://github.com/egret-labs/egret-core/wiki/Egret-SpriteSheet-Specification
 * @see http://edn.egret.com/cn/docs/page/135 The use of texture packs
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.SpriteSheet")
extern class SpriteSheet extends HashObject 
{
	/**
	 * Create an SpriteSheet object.
	 * @param	texture Texture.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(texture:Texture);
	
	/**
	 * Obtain a cached Texture object according to the specified texture name.
	 * @param	name Cache the name of this Texture object.
	 * @return	The Texture object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getTexture(name:String):Texture;
	
	/**
	 * Create a new Texture object for the specified area on SpriteSheet and cache it.
	 * @param	name			Cache the name of this Texture object. If the name already exists, the previous Texture object will be overwrited.
	 * @param	bitmapX			Starting coordinate x of texture area on bitmapData.
	 * @param	bitmapY			Starting coordinate y of texture area on bitmapData.
	 * @param	bitmapWidth		Width of texture area on bitmapData.
	 * @param	bitmapHeight	Height of texture area on bitmapData.
	 * @param	offsetX			Starting point x for a non-transparent area of the original bitmap.
	 * @param	offsetY			Starting point y for a non-transparent area of the original bitmap.
	 * @param	textureWidth	Width of the original bitmap. If it is not passed, use the bitmapWidth value.
	 * @param	textureHeight	Height of the original bitmap. If it is not passed, use the bitmapHeight value.
	 * @return	The created Texture object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function createTexture(	name:String,
									bitmapX:Int,
									bitmapY:Int,
									bitmapWidth:Int,
									bitmapHeight:Int,
									?offsetX:Int,
									?offsetY:Int,
									?textureWidth:Int,
									?textureHeight:Int
	):Texture;
	
	/**
	 * Dispose texture.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function dispose():Void;
}