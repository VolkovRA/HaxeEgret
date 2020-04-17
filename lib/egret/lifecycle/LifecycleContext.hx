package egret.lifecycle;

/**
 * @author VolkovRA
 */
@:native("egret.lifecycle.LifecycleContext")
extern class LifecycleContext 
{
	public var onUpdate:Void->Void;
	
	public function pause():Void;
	public function resume():Void;
}