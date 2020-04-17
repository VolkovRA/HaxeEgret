package egret.net;

/**
 * The HttpResponseType class provides values that specify how downloaded data is received.
 * See: HttpRequest
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract HttpResponseType(String) to String
{
	/**
	 * Specifies that downloaded data is received as text.
	 * This is the default value of HttpRequest.responseType.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var TEXT = "text";
	
	/**
	 * Specifies that downloaded data is received as raw binary data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var ARRAY_BUFFER = "arraybuffer";
}