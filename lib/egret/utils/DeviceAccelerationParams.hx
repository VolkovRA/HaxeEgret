package egret.utils;

/**
 * A DeviceAcceleration object provides information about the amount of acceleration the device is experiencing along all three axes.
 * Acceleration is expressed in m/s2.
 * @version Egret 2.4
 * @platform Web
 * @author VolkovRA
 */
typedef DeviceAccelerationParams =
{
	/**
	 * The amount of acceleration along the X axis.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var x:Float;
	
	/**
	 * The amount of acceleration along the Y axis.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var y:Float;
	
	/**
	 * The amount of acceleration along the Z axis.
	 * @version Egret 2.4
	 * @platform Web
	 */
	var z:Float;
}