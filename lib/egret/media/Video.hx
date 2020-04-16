package egret.media;

import egret.display.BitmapData;
import egret.display.DisplayObject;

/**
 * The Video class lets you work with video in an application.
 * The Video class lets you create a Video object, load and play an external video file into that object.
 * Note: On most mobile device, the video is playback in the full screen mode.
 *
 * @event Event.COMPLETE					Dispatch when the video resource is loaded and ready to play.
 * 
 * @event Event.ENDED						Dispatch when the video playback ended.
 * 
 * @event IOErrorEvent.IO_ERROR				When the video is failed to load.
 * 
 * @event Event.ADDED						Dispatched when a display object is added to the display list.
 * 
 * @event Event.ADDED_TO_STAGE				Dispatched when a display object is added to the on stage display list, either
 * 											directly or through the addition of a sub tree in which the display object is contained.
 * 
 * @event Event.REMOVED						Dispatched when a display object is about to be removed from the display list.
 * 
 * @event Event.REMOVED_FROM_STAGE			Dispatched when a display object is about to be removed from the display list, either
 * 											directly or through the removal of a sub tree in which the display object is contained.
 *
 * @event Event.ENTER_FRAME					[broadcast event] Dispatched when the playhead is entering a new frame.
 * 
 * @event Event.RENDER						[broadcast event] Dispatched when the display list is about to be updated and rendered.
 * 
 * @event TouchEvent.TOUCH_MOVE				Dispatched when the user touches the device, and is continuously dispatched until the
 * 											point of contact is removed.
 * 
 * @event TouchEvent.TOUCH_BEGIN			Dispatched when the user first contacts a touch-enabled device (such as touches a finger
 * 											to a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_END				Dispatched when the user removes contact with a touch-enabled device (such as lifts a
 * 											finger off a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_TAP				Dispatched when the user lifts the point of contact over the same DisplayObject instance
 * 											on which the contact was initiated on a touch-enabled device (such as presses and releases
 * 											a finger from a single point over a display object on a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_RELEASE_OUTSIDE	Dispatched when the user lifts the point of contact over the different DisplayObject
 * 											instance on which the contact was initiated on a touch-enabled device (such as presses and
 * 											releases a finger from a single point over a display object on a mobile phone or tablet
 * 											with a touch screen).
 * 
 * @version Egret 2.4
 * @platform Web
 * @author VolkovRA
 */
@:native("egret.Video")
extern class Video extends DisplayObject 
{
	/**
	 * Creates a new Video instance.
	 * @param	url		URL of the media to play, Video will start to load if the url is not empty.
	 * @param	cache	Should cache the video, only  used in Native.
	 */
	public function new(?url:String, ?cache:Bool);
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The URL of the video you want to play.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var src:String;
	
	/**
	 * The URL of an image you want to display before the video is loaded or video cannot been draw on the canvas on some mobile device.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var poster:String;
	
	/**
	 * Should play the video in fullscreen mode (default = true).
	 * Currently only supports full-screen mobile terminal web.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var fullscreen:Bool;
	
	/**
	 * The volume, ranging from 0 (silent) to 1 (full volume).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var volume:Float;
	
	/**
	 * When the video is playing, the position property indicates.
	 * in seconds the current point that is being played in the video file.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var position:Float;
	
	/**
	 * Get bitmapData of the video file, you can use the video as bitmapData on the stage.
	 * Note: On most mobile device, the video is playback in the full screen mode.
	 * So you can just use the play() method instead of draw it on the Stage.
	 * @version Egret 2.4
	 * @platform Web
	 */
	public var bitmapData:BitmapData;
	
	/**
	 * Whether current video is paused.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var paused(default, null):Bool;
	
	/**
	 * Length of the current video (in seconds).
	 * @version Egret 3.0.8
	 * @platform Web,Native
	 */
	public var length(default, null):Float;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Initiates loading of an external video file from the specified URL.
	 * @param	url		Video file URL.
	 * @param	cache	Should cache the video, only  used in Native.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function load(url:String, cache:Bool = false):Void;
	
	/**
	 * Play back the video.
	 * @param	startTime	The initial position in seconds at which playback should start.
	 * @param	loop		Defines should play the video again when the video is ended.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function play(startTime:Float = 0, loop:Bool = false):Dynamic;
	
	/**
	 * Closes the stream, causing any download of data to cease.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function close():Void;
	
	/**
	 * Pause the video playing.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function pause():Void;
}