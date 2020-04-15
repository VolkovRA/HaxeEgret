package;

import egret.*;
import egret.display.*;
import egret.events.*;
import egret.filters.*;
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
		trace(BlendMode.ADD);
		trace(ChildrenSortMode.DECREASE_Y);
		trace(StageScaleMode.EXACT_FIT);
		trace(OrientationMode.LANDSCAPE);
		trace(CapsStyle.NONE);
		trace(GradientType.RADIAL);
		trace(JointStyle.MITER);
		trace(ScaleMode.NORMAL);
		trace(DisplayObject);
		trace(DisplayObjectContainer);
		trace(Stage);
		trace(Graphics);
		trace(Shape);
		
		// filters:
		trace(Filter);
		trace(BlurFilter);
		trace(ColorMatrixFilter);
		trace(GlowFilter);
		trace(DropShadowFilter);
		trace(CustomFilter);
	}
}