package egret.net;

/**
 * The WebSocketType class provides values that specify of WebSocket data format.
 * See: WebSocket
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract WebSocketType(String) to String
{
	/**
	 * Send and receive data in character string format.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var STRING = "webSocketTypeString";
	
	/**
	 * Send and receive data in binary format.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var BINARY = "webSocketTypeBinary";
}