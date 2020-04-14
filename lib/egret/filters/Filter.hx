package egret.filters;

import egret.HashObject;

/**
 * Filter.
 * Abstract class of all filters.
 * @author VolkovRA
 */
@:native("egret.Filter")
extern class Filter extends HashObject 
{
	/**
	 * Initializes a Filter object.
	 */
	public function new();
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var type:String;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	public function onPropertyChange():Void;
	
	
	
	///////////////////
	//   PROTECTED   //
	///////////////////
	
	private var paddingTop:Float;
	private var paddingBottom:Float;
	private var paddingLeft:Float;
	private var paddingRight:Float;
	private function updatePadding():Void;
}