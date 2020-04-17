package res;

import egret.events.Event;

/**
 * The events of resource loading.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("RES.ResourceEvent")
extern class ResourceEvent extends Event 
{
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Failure event for a load item.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var ITEM_LOAD_ERROR:String = "itemLoadError";
	
	/**
	 * Configure file to load and parse the completion event.
	 * Note: if a configuration file is loaded, it will not be thrown out, and if you want to handle
	 * the configuration loading failure, monitor the CONFIG_LOAD_ERROR event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var CONFIG_COMPLETE:String = "configComplete";
	
	/**
	 * Configuration file failed to load.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var CONFIG_LOAD_ERROR:String = "configLoadError";
	
	/**
	 * Delay load group resource loading progress event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var GROUP_PROGRESS:String = "groupProgress";
	
	/**
	 * Delay load group resource to complete event.
	 * Note: if you have a resource item loading failure, the event will not be thrown,
	 * if you want to handle the group load failure, please listen to the GROUP_LOAD_ERROR event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var GROUP_COMPLETE:String = "groupComplete";
	
	/**
	 * Delayed load group resource failed event.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public inline var GROUP_LOAD_ERROR:String = "groupLoadError";
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * File number that has been loaded.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var itemsLoaded:Int;
	
	/**
	 * Total file number to load.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var itemsTotal:Int;
	
	/**
	 * Resource group name.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var groupName:String;
	
	/**
	 * An item of information that is finished by the end of a load.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var resItem:ResourceItem;
}