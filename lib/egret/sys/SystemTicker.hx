package egret.sys;

/**
 * Egret heartbeat timer.
 * @author VolkovRA
 */
@:native("egret.sys.SystemTicker")
extern class SystemTicker 
{
	/**
	 * Pause the ticker.
	 * @version Egret 5.0.2
	 * @platform Web,Native
	 */
	static public function pause():Void;
	
	/**
	 * Resume the ticker.
	 * @version Egret 5.0.2
	 * @platform Web,Native
	 */
	static public function resume():Void;
}