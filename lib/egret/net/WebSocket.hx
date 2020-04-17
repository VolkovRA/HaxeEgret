package egret.net;

import egret.events.EventDispatcher;
import egret.utils.ByteArray;

/**
 * The egret.WebSocket class enables code to establish a TCP socket connection, for sending and receiving character string or binary data.
 * To use the methods of the egret.WebSocket class, first use the constructor function new egret.WebSocket to create an WebSocket object.
 * The socket transmits and receives data in asynchronous mode.
 * 
 * See: http://edn.egret.com/cn/docs/page/602 WebSocket
 * 
 * @event Event.CONNECT					Successfully connect to the server.
 * 
 * @event ProgressEvent.SOCKET_DATA		Receiving server data.
 * 
 * @event Event.CLOSE					Dispatched when the server closes the connection.
 * 
 * @event IOErrorEvent.IO_ERROR			Dispatched when an IO error causes a send or load operation to fail.
 * 
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.WebSocket")
extern class WebSocket extends EventDispatcher 
{
	/**
	 * Create an WebSocket object.
	 * This parameter is reserved for later versions.
	 * The connection address and port number are imported in the connect function.
	 * @param	host	Host.
	 * @param	port	Port.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(host:String = "", port:Int = 0);
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Format for sending and receiving data.
	 * The default setting is the character string format.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var type:WebSocketType;
	
	/**
	 * Indicates whether the Socket object is connected currently.
	 * @version Egret 2.4
	 * @platform Web,Native
	 * @language en_US
	 */
	public var connected(default, null):Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Connect the socket to the specified host and port number.
	 * @param	host	Name or IP address of the host to be connected.
	 * @param	port	Port number to be connected.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function connect(host:String, port:Int):Void;
	
	/**
	 * Connect according to the provided url.
	 * @param	url Full address, such as: <code>ws://echo.websocket.org:80</code>
	 */
	public function connectByUrl(url:String):Void;
	
	/**
	 * Close socket.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function close():Void;
	
	/**
	 * Refresh all data accumulated in the output buffer area of the socket.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function flush():Void;
	
	/**
	 * Write data in character string in the socket.
	 * @param	message The character string to be written in the socket.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeUTF(message:String):Void;
	
	/**
	 * Read a UTF-8 character string from the socket.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readUTF():String;
	
	/**
	 * Write a series of bytes from the specified byte array.
	 * The writing operation starts from the location expressed by offset.
	 * If the length parameter is ignored, the default length 0 indicates that data is written from offset in the entire buffer area.
	 * If the offset parameter is ignored, data is written in the entire buffer area.
	 * @param	bytes	The ByteArray object where data is read from.
	 * @param	offset	Zero-based offset in the ByteArray object. From here start performing data writing.
	 * @param	length	Number of bytes to be written Default value 0 indicates data is written in the entire buffer area from the value specified by the offset parameter.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeBytes(bytes:ByteArray, offset:Int = 0, length:Int = 0):Void;
	
	/**
	 * Read data byte number specified by the length parameter from the socket.
	 * Read these bytes into the specified byte array starting from the location expressed by offset.
	 * @param	bytes	The ByteArray object that data is read into.
	 * @param	offset	The offset for data reading starts from this byte array.
	 * @param	length	Byte number to be read Default value 0 indicates reading all available data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readBytes(bytes:ByteArray, offset:Int = 0, length:Int = 0):Void;
}