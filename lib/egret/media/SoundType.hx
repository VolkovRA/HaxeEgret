package egret.media;

/**
 * SoundType enum is an enumeration of constant value used in setting the type property of the Sound class.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract SoundType(String) to String
{
	/**
	 * Background music.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var MUSIC = "music";
	
	/**
	 * Effect.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var EFFECT = "effect";
}