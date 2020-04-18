package egret;

import egret.sys.SystemTicker;
import haxe.Constraints.Function;
import haxe.extern.Rest;

/**
 * Egret framework.
 * Global object of framework in runtime.
 * 
 * Egret is a brand new open mobile game and application engine which allows you to quickly
 * build mobile games and apps on Android, iOS and Windows.
 * And I writed extensions of Haxe for you, enjoy!
 * 
 * GitHub:	https://github.com/egret-labs/egret-core
 * Site:	https://www.egret.com/
 * Docs:	https://developer.egret.com/en/apidoc/
 * @author VolkovRA
 */
@:native("egret")
extern class Egret 
{
	/**
	 * Single heartbeat timer.
	 * @version All
	 * @platform Web,Native
	 */
	static public var ticker:SystemTicker;
	
	/**
	 * Writes an error message to the console if the assertion is false.
	 * If the assertion is true, nothing will happen.
	 * @param	assertion	Any boolean expression. If the assertion is false, the message will get written to the console.
	 * @param	message		The message written to the console.
	 * @param	options		The extra messages written to the console.
	 */
	static public function assert(?assertion:Bool, ?message:Dynamic, options:Rest<Dynamic>):Void;
	
	/**
	 * Writes a warning message to the console.
	 * @param	message	The message written to the console.
	 * @param	options	The extra messages written to the console.
	 */
	static public function warn(?message:Dynamic, options:Rest<Dynamic>):Void;
	
	/**
	 * Writes an error message to the console.
	 * @param	message	The message written to the console.
	 * @param	options	The extra messages written to the console.
	 */
	static public function error(?message:Dynamic, options:Rest<Dynamic>):Void;
	
	/**
	 * Writes an message to the console.
	 * @param	message	The message written to the console.
	 * @param	options	The extra messages written to the console.
	 */
	static public function log(?message:Dynamic, options:Rest<Dynamic>):Void;
	
	/**
	 * Delay the function to run unless screen is redrawn.
	 * @param	method		The function to be delayed to run.
	 * @param	thisObject	This reference of callback function.
	 * @param	args		Function parameter list.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function callLater(method:Function, thisObject:Dynamic, args:Rest<Dynamic>):Void;
	
	/**
	 * Returns a reference to the class object of the class specified by the name parameter.
	 * @param	name The name of a class.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function getDefinitionByName(name:String):Dynamic;
	
	/**
     * Returns the singleton instance of the implementation class that was registered for the specified interface.
     * This method is usually called by egret framework.
	 * @param	interfaceName The interface name to identify. For example："eui.IAssetAdapter","eui.Theme".
	 * @return	The singleton instance of the implementation class.
     * @version Egret 3.2.1
     * @platform Web,Native
	 */
	static public function getImplementation(interfaceName:String):Dynamic;
	
	/**
	 * Adds an interface-name-to-implementation-class mapping to the registry.
	 * @param	interfaceName	The interface name to register. For example："eui.IAssetAdapter","eui.Theme".
	 * @param	instance		The instance to register.
     * @version Egret 3.2.1
     * @platform Web,Native
	 */
	static public function registerImplementation(interfaceName:String, instance:Dynamic):Void;
	
	/**
	 * Get browser or Runtime parameters, returns an empty string if not set.
     * Get the url parameter corresponds to the browser, access to the corresponding parameter in the Runtime setOption.
	 * @param	key	Parameters key.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function getOption(key:String):String;
	
	/**
	 * Return the fully qualified class name of an object.
	 * Example: <code>
	 * Egret.getQualifiedClassName(egret.DisplayObject) //return "egret.DisplayObject"
	 * </code>
	 * @param	value	The object for which a fully qualified class name is desired. Any JavaScript value may be passed to
     * 					this method including all available JavaScript types, object instances, primitive types such as number, and class objects.
	 * @return	A string containing the fully qualified class name.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function getQualifiedClassName(value:Dynamic):String;
	
	/**
	 * Returns the fully qualified class name of the base class of the object specified by the value parameter.
	 * Example: <code>
	 * Egret.getQualifiedSuperclassName(egret.Bitmap) //return "egret.DisplayObject"
	 * </code>
	 * @param	value	The object for which a parent class is desired. Any JavaScript value may be passed to this method including
     * 					all available JavaScript types, object instances, primitive types such as number, and class objects.
	 * @return	A fully qualified base class name, or null if none exists.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function getQualifiedSuperclassName(value:Dynamic):String;
	
	/**
	 * Used to compute relative time.this method returns the number of milliseconds since the Egret framework was initialized.
	 * @return The number of milliseconds since the Egret framework was initialized.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function getTimer():Float;
	
	/**
	 * Check whether a public definition exists in the specified application domain.
	 * The definition can be that of a class, a naming space or a function.
	 * Example: <code>
	 * Egret.hasDefinition("egret.DisplayObject") //return true
	 * </code>
	 * @param	name Name of the definition.
	 * @return	Whether the public definition exists.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function hasDefinition(name:String):Bool;
	
	/**
	 * Indicates whether an object is a instance of the class or interface specified as the parameter.
	 * This method has better performance compared width the instanceOf operator, and it can indicate whether an object is a instance of the specific interface.
	 * Example:<code>
	 * var instance = new Sprite();
     * Egret.log(Egret.is(instance,"egret.Sprite")) //true
     * Egret.log(Egret.is(instance,"egret.DisplayObjectContainer")) //true
     * Egret.log(Egret.is(instance,"egret.Bitmap")) //false
	 * </code>
	 * 
	 * @param	instance	The instance to be checked.
	 * @param	typeName	The string value representing a specific class or interface.
	 * @return	A value of true if the object is a instance of the class or interface specified as the parameter.
     * @see egret.registerClass()
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function is(instance:Dynamic, typeName:String):Bool;
	
	/**
	 * Registers the runtime class information for a class.
	 * This method adds some strings which represent the class name or some interface names to the class definition.
	 * After the registration,you can use egret.is() method to do the type checking for the instance of this class.
     * Note: If you use the TypeScript programming language, the egret command line tool will automatically generate the registration code line.
     * You don't need to manually call this method.
	 * 
	 * The following code shows how to register the runtime class information for the EventDispatcher class and do the type checking:
     * <pre>
     * Egret.registerClass(EventDispatcher,"egret.EventDispatcher",["egret.IEventDispatcher"]);
     * var dispatcher = new EventDispatcher();
     * Egret.log(Egret.is(dispatcher, "egret.IEventDispatcher")); //true
     * Egret.log(Egret.is(dispatcher, "egret.EventDispatcher")); //true
     * Egret.log(Egret.is(dispatcher, "egret.Bitmap")); //false
     * </pre>
	 * 
	 * @param	classDefinition	The class definition to be registered.
	 * @param	className		A unique identification string of the specific class.
	 * @param	interfaceNames	A list of unique identification string of the specific interfaces.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function registerClass(classDefinition:Dynamic, className:String, ?interfaceNames:Array<String>):Void;
	
	/**
	 * Register and start a timer, which will notify the callback method at a rate of 60 FPS, and pass the current time stamp as parameters.
     * Note: After the registration, it will notify the callback method continuously, you can call the stopTick() method to stop it.
	 * @param	callBack	The call back method. the timeStamp parameter of this method represents the number of milliseconds
     * 						since the Egret framework was initialized. If the return value of this method is true, it will force Egret runtime
     * 						to render after processing of this method completes.
	 * @param	thisObject	The call back method's "this".
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function startTick(callBack:Float->Bool, thisObject:Dynamic):Void;
	
	/**
	 * Stops the timer started by the egret.startTick() method.
	 * @param	callBack	The call back method. the timeStamp parameter of this method represents the number of milliseconds
     * 						since the Egret framework was initialized. If the return value of this method is true, it will force Egret runtime
     * 						to render after processing of this method completes.
	 * @param	thisObject	The call back method's "this".
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function stopTick(callBack:Float->Bool, thisObject:Dynamic):Void;
	
	/**
	 * Transfer number to color character string.
	 * @param	value Color value ,such as 0xffffff.
	 * @return	Color character string, for example, #ffffff.
     * @version Egret 2.4
     * @platform Web,Native
	 */
	static public function toColorString(value:Float):String;
	
	/**
	 * Egret project entry function.
	 * @param	options An object containing the initialization properties for egret engine.
	 */
	static public function runEgret(options:RunEgretOptions):Void;
	
	/**
	 * Call setter properties of the parent class, instead of the other writing languages, such as super.alpha = 1;
	 * Example:<code>
	 * Egret.superSetter(Sprite, this, "alpha", 1);
	 * </code>
	 * @param	currentClass	The current class class name, non-string.
	 * @param	thisObj			The current object. Always this.
	 * @param	type			Setter property names need to call.
	 * @param	values			Value passed to the parent class.
	 */
	static public function superSetter(currentClass:Dynamic, thisObj:Dynamic, type:String, values:Rest<Dynamic>):Dynamic;
	
	/**
	 * Get getter property value of the parent class. Instead of writing in other languages, such as super.alpha;
	 * Example:<code>
	 * Egret.superGetter(Sprite, this, "alpha");
	 * </code>
	 * @param	currentClass	The current class class name, non-string.
	 * @param	thisObj			The current object. Always this.
	 * @param	type			Setter property names need to call.
	 * @return	The value returned by the parent.
	 */
	static public function superGetter(currentClass:Dynamic, thisObj:Dynamic, type:String):Dynamic;
	
	/**
	 * Refresh the screen display.
	 */
	static public function updateAllScreens():Void;
}