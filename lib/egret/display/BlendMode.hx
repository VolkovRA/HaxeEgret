package egret.display;

/**
 * A class that provides constant values for visual blend mode effects.
 * These constants are used in the blendMode property of the DisplayObject class.
 * @see DisplayObject#blendMode
 * @version Egret 2.4
 * @platform Web,Native
 * @see http://edn.egret.com/cn/docs/page/108 The concept and implementation of display container.
 * @author VolkovRA
 */
@:enum abstract BlendMode(String) to String
{
	/**
	 * Adds the values of the constituent colors of the display object to the colors of its background, applying a ceiling of 0xFF.
	 * This setting is commonly used for animating a lightening dissolve between two objects.
	 * For example, if the display object has a pixel with an RGB value of 0xAAA633, and the background pixel has an
	 * RGB value of 0xDD2200, the resulting RGB value for the displayed pixel is 0xFFC833 (because 0xAA + 0xDD > 0xFF,
	 * 0xA6 + 0x22 = 0xC8, and 0x33 + 0x00 = 0x33).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var ADD = "add";
	
	/**
	 * Erases the background based on the alpha value of the display object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var ERASE = "erase";
	
	/**
	 * The display object appears in front of the background.
	 * Pixel values of the display object override the pixel values of the background.
	 * Where the display object is transparent, the background is visible.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var NORMAL = "normal";
}