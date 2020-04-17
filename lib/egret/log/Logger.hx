package egret.log;

/**
 * Logger is an entrance for the log processing namespace of the engine.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Logger")
extern class Logger 
{
	/**
	 * Set the current need to open the log level.
	 * Grade level are: ALL <DEBUG <INFO <WARN <ERROR <OFF
	 * This feature is only in DEBUG mode to take effect.
	 * <code>Logger.ALL</code> - All levels of log can be printed out.
	 * <code>Logger.DEBUG</code> - Print debug, info, log, warn, error.
	 * <code>Logger.INFO</code> - Print info, log, warn, error.
	 * <code>Logger.WARN</code> - Can print warn, error.
	 * <code>Logger.ERROR</code> - You can print error.
	 * <code>Logger.OFF</code> - All closed.
	 * Param LogType from this level to start printing.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var logLevel:LogLevel;
}