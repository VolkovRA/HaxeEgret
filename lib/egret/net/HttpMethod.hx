package egret.net;

/**
 * The HttpMethod enum defines the possible values for the HttpRequest.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract HttpMethod(String) to String
{
	/**
	 * Specifies that the HttpRequest object is a GET.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var GET = "GET";
	
	/**
	 * Specifies that the HttpRequest object is a POST.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var POST = "POST";
}