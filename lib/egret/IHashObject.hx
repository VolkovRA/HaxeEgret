package egret;

/**
 * The HashObject class is the base class for all objects in the Egret framework.
 * The HashObject class includes a hashCode property, which is a unique identification number of the instance.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.IHashObject")
extern interface IHashObject 
{
	/**
	 * A unique identification number assigned to this instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var hashCode(default, null):Float;
}