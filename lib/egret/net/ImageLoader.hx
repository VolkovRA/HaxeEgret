package egret.net;

import egret.display.BitmapData;
import egret.events.EventDispatcher;

/**
 * The Loader class is used to load image (JPG, PNG, or GIF) files.
 * Use the load() method to initiate loading. The loaded image data is in the data property of ImageLoader.
 * See: HttpRequest
 * 
 * @event Event.COMPLETE			Dispatched when the net request is complete.
 * 
 * @event IOErrorEvent.IO_ERROR		Dispatched when the net request is failed.
 * 
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.ImageLoader")
extern class ImageLoader extends EventDispatcher 
{
	/**
	 * Creates a new ImageLoader instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	/**
	 * The data received from the load operation.
	 * Default: null
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var data:BitmapData;
	
	/**
	 * Specifies whether or not cross-site Access-Control requests should be made when loading a image from foreign origins.
	 * Possible values are:"anonymous", "use-credentials" or null.
	 * Default: null
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var crossOrigin:String;
	
	/**
	 * Start a load operation.
	 * Note: Calling this method for an already active request (one for which load() has already been called) will abort the last load operation immediately.
	 * @param	url The address of the image file to be loaded.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function load(url:String):Void;
}