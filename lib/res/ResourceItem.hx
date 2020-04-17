package res;

/**
 * Resource term.
 * One of the resources arrays in resource.json.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("RES.ResourceItem")
extern class ResourceItem 
{
	/**
	 * Create an ResourceItem object.
	 * @param	name	Name of resource term.
	 * @param	url		URL of resource term.
	 * @param	type	Type of resource term.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new(name:String, url:String, type:ResourceItemType);
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Name of resource term.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var name:String;
	
	/**
	 * URL of resource term.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var url:String;
	
	/**
	 * Type of resource term.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var type:ResourceItemType;
	
	/**
	 * Name of the resource term group.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var groupName:String;
	
	/**
	 * The raw data object to be referenced.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var data:Dynamic;
	
	/**
	 * Load complete flag.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var loaded:Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Turn into a string.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function toString():String;
}