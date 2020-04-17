package egret.net;

import egret.events.EventDispatcher;

/**
 * The HttpRequest class downloads data from a URL as text or binary data.
 * It is useful for downloading text files, XML, or other information to be used in a dynamic, data-driven application.
 * A HttpRequest object downloads all of the data from a URL before making it available to code in the applications.
 * It sends out notifications about the progress of the download, which you can monitor through the bytesLoaded and bytesTotal properties, as well as through dispatched events.
 *
 * See: HttpMethod
 * See: HttpResponseType
 * 
 * @event Event.COMPLETE			Dispatched when the net request is complete.
 * 
 * @event Event.IO_ERROR			Dispatched when the net request is failed.
 * 
 * @event ProgressEvent.PROGRESS	Dispatched when data is received as the download operation progresses.
 * 
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.HttpRequest")
extern class HttpRequest extends EventDispatcher 
{
	/**
     * Creates a HttpRequest object.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	public function new();
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The data received from the load operation. 
	 * The format of the data depends on the setting of the responseType property.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var response(default, null):Dynamic;
	
	/**
	 * Controls whether the downloaded data is received as text (HttpResponseType.TEXT) or raw binary data (HttpResponseType.ArrayBuffer)
	 * Note:If you attempt to set this property to an invalid value, Egret runtime set the value to HttpResponseType.TEXT.
	 * Default: <code>HttpResponseType.TEXT</code>
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var responseType:HttpResponseType;
	
	/**
	 * Can be set to a time in milliseconds.
	 * When set to a non-zero value will cause fetching to terminate after the given time has passed.
	 * Default: <code>HttpResponseType.TEXT</code>
	 * @version Egret 5.2.15
	 * @platform Web,Native
	 */
	public var timeout:Float;
	
	/**
	 * Indicates whether or not cross-site Access-Control requests should be made using credentials such as cookies
	 * or authorization headers. (This never affects same-site requests.)
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var withCredentials:Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Initializes a request.
	 * Note: Calling this method for an already active request (one for which open() or openRequest() has already
	 * been called) is the equivalent of calling abort().
	 * @param	url		The URL to send the request to.
	 * @param	method	The HTTP method to use, please use the const value in the HttpMethod class.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function open(url:String, method:HttpMethod = HttpMethod.GET):Void;
	
	/**
	 * Sends the request.
	 * @param	data The data to send.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function send(data:Dynamic = null):Void;
	
	/**
	 * Aborts the request if it has already been sent.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function abort():Void;
	
	/**
	 * Returns all the response headers as a string, or null if no response has been received.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getAllResponseHeaders():String;
	
	/**
	 * Sets the value of an HTTP request header.
	 * You must call setRequestHeader() after open().
	 * @param	header	The name of the header whose value is to be set.
	 * @param	value	The value to set as the body of the header.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function setRequestHeader(header:String, value:String):Void;
	
	/**
	 * Returns the string containing the text of the specified header,
	 * or null if either the response has not yet been received or the header doesn't exist in the response.
	 * @param	header The name of the header whose value is to be get.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getResponseHeader(header:String):String;
}