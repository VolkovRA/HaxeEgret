package egret;

/**
 * The HashObject class is the base class for all objects in the Egret framework
 * The HashObject class includes a hashCode property, which is a unique identification number of the instance.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.HashObject")
extern class HashObject implements IHashObject
{
	/**
	 * Initializes a HashObject.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	/**
	 * A unique identification number assigned to this instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var hashCode(default, null):Float;
}