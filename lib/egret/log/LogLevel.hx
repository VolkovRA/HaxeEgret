package egret.log;

/**
 * The LogLevel enum defines a pattern enumeration for `logLevel` property of Logger.
 * @version Egret 2.4
 * @platform Native
 * @author VolkovRA
 */
@:enum abstract LogLevel(String) to String
{
	/**
	 * Open all.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var ALL = "all";
	
	/**
	 * Level: DEBUG
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var DEBUG = "debug";
	
	/**
	 * Level: INFO
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var INFO = "info";
	
	/**
	 * Level: WARN
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var WARN = "warn";
	
	/**
	 * Level: ERROR
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var ERROR = "error";
	
	/**
	 * Close all.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var OFF = "off";
}