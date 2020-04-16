package egret.utils;

/**
 * A DeviceRotationRate object provides information about the rate at which the device is rotating around all three axes.
 * @version Egret 2.4
 * @platform Web
 * @author VolkovRA
 */
typedef DeviceRotationRateParams =
{
	/**
	 * The amount of rotation around the Z axis, in degrees per second.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var alpha:Float;
	
	/**
	 * The amount of rotation around the X axis, in degrees per second.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var beta:Float;
	
	/**
	 * The amount of rotation around the Y axis, in degrees per second.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var gamma:Float;
}