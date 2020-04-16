package egret.utils;

/**
 * Type of operation.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract RuntimeType(String) to String
{
	/**
	 * Running on Web.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var WEB = "web";
	
	/**
	 * Running on NATIVE.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:deprecated
	var NATIVE = "native";
	
	/**
	 * Running on Runtime2.0.
	 * @version Egret 5.1.5
	 * @platform Web,Native
	 */
	var RUNTIME2 = "runtime2";
	
	/**
	 * Running on Alipay.
	 * @version Egret 5.2.33
	 * @platform All
	 */
	var MYGAME = "mygame";
	
	/**
	 * Running on WeChat mini game.
	 * @version Egret 5.1.5
	 * @platform All
	 */
	var WXGAME = "wxgame";
	
	/**
	 * Running on Baidu mini game.
	 * @version Egret 5.2.13
	 * @platform All
	 */
	var BAIDUGAME = "baidugame";
	
	/**
	 * Running on Xiaomi quick game.
	 * @version Egret 5.2.14
	 * @platform All
	 */
	var QGAME = "qgame";
	
	/**
	 * Running on OPPO mini game.
	 * @version Egret 5.2.14
	 * @platform All
	 */
	var OPPOGAME = "oppogame";
	
	/**
	* Running on QQ mini game.
	* @version Egret 5.2.25
	* @platform All
	 */
	var QQGAME = "qqgame";
	
	/**
	 * Running on vivo mini game.
	 * @version Egret 5.2.23
	 * @platform All
	 */
	var VIVOGAME = "vivogame";
}