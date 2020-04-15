package egret.display;

/**
 * The BitmapFillMode class defines the image fill mode of Bitmap.
 * The BitmapFillMode class defines a pattern enumeration for adjusting size.
 * These patterns determine how Bitmap fill the size designated by the layout system.
 * @see http://edn.egret.com/cn/docs/page/134 Texture filling way
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract BitmapFillMode(String) to String
{
	/**
	 * Repeat the bitmap to fill area.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var REPEAT = "repeat";
	
	/**
	 * Scale bitmap fill to fill area.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var SCALE = "scale";
	
	/**
	 * The bitmap ends at the edge of the region.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var CLIP = "clip";
}