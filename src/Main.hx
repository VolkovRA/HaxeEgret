package;

import egret.*;
import egret.display.*;
import egret.events.*;
import egret.geom.*;

class Main
{
	static function main()
	{
		// egret:
		trace(IHashObject);
		trace(HashObject);
		
		// events:
		trace(Event);
		trace(IEventDispatcher);
		trace(EventDispatcher);
		trace(EventPhase.AT_TARGET);
		
		// geom:
		trace(Point);
		trace(Rectangle);
		trace(Matrix);
		
		// display:
		trace(DisplayObject);
		trace(BlendMode);
	}
}