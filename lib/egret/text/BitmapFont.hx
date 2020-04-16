package egret.text;

import egret.display.Texture;
import egret.utils.SpriteSheet;

/**
 * Bitmap font, texture set of a font.
 * It is generally used as the value of the BitmapText.font attribute.
 * @see http://bbs.egret-labs.org/thread-918-1-1.html TextureMerger
 * @see http://bbs.egret-labs.org/forum.php?mod=viewthread&tid=251 Text(Containing the specific usage of the bitmap font )
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.BitmapFont")
extern class BitmapFont extends SpriteSheet 
{
	/**
	 * Create an BitmapFont object.
	 * @param	texture	Texture set that use TextureMerger create.
	 * @param	config	Configure data that use TextureMerger create.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(texture:Texture, config:Dynamic);
}