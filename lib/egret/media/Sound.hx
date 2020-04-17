package egret.media;

import egret.events.EventDispatcher;

/**
 * The Sound class lets you work with sound in an application.
 * The Sound class lets you create a Sound object, load and play an external audio file into that object.
 * More detailed control of the sound is performed through the SoundChannel
 * 
 * @event Event.COMPLETE			Dispatch when the audio resource is loaded and ready to play.
 * 
 * @event IOErrorEvent.IO_ERROR		Dispatch when the audio resource is failed to load.
 * 
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Sound")
extern class Sound extends EventDispatcher 
{
	/**
	 * Create Sound object, load an external audio file and play.
	 * @param	url Audio file URL, Sound will start to load the media if url is not empty.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(url:String);
	
	/**
	 * Type, default is SoundType.EFFECT.
	 * In the native and runtime environment, while only play a background music, sound length so as not to be too long.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var type:SoundType;
	
	/**
	 * Length of the current sound (in seconds).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var length(default, null):Float;
	
	/**
	 * Initiates loading of an external audio file from the specified URL.
	 * @param	url	Audio file URL.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function load(url:String):Void;
	
	/**
	 * Generates a new SoundChannel object to play back the sound.
	 * @param	startTime	The initial position in seconds at which playback should start.
	 * @param	loops		Plays, the default value is 0. Greater than 0 to the number of plays, such as 1 to play 1, less than or equal to 0, to loop.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function play(startTime:Float = 0, loops:Int = 0):SoundChannel;
	
	/**
	 * Closes the stream, causing any download of data to cease.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function close():Void;
}