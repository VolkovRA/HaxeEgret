package egret.media;

import egret.events.EventDispatcher;

/**
 * The SoundChannel class controls a sound in an application.
 * Every sound is assigned to a sound channel, and the application can have multiple sound channels that are mixed together.
 * The SoundChannel class contains a stop() method, properties for set the volume of the channel.
 *
 * @event Event.SOUND_COMPLETE		Dispatch when a sound has finished playing at last time.
 * 
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.SoundChannel")
extern class SoundChannel extends EventDispatcher 
{
	/**
	 * The volume, ranging from 0 (silent) to 1 (full volume).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var volume:Float;
	
	/**
	 * When the sound is playing, the position property indicates in seconds the current point that is being played in the sound file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var position(default, null):Float;
	
	/**
	 * Stops the sound playing in the channel.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function stop():Void;
}