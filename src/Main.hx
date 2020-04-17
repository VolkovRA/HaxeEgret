package;

import egret.*;
import egret.display.*;
import egret.events.*;
import egret.filters.*;
import egret.geom.*;
import egret.sys.*;
import egret.tween.*;
import egret.text.*;
import egret.utils.*;
import egret.media.*;
import egret.device.*;

class Main
{
	static function main()
	{
		trace(Egret);
		
		// egret:
		trace(IHashObject);
		trace(HashObject);
		
		// events:
		trace(Event);
		trace(TouchEvent);
		trace(TimerEvent);
		trace(FocusEvent);
		trace(GeolocationEvent);
		trace(HTTPStatusEvent);
		trace(IOErrorEvent);
		trace(MotionEvent);
		trace(OrientationEvent);
		trace(ProgressEvent);
		trace(TextEvent);
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
		trace(BitmapFillMode.CLIP);
		trace(DisplayObject);
		trace(DisplayObjectContainer);
		trace(Stage);
		trace(Graphics);
		trace(Shape);
		trace(Sprite);
		trace(Texture);
		trace(RenderTexture);
		trace(BitmapData);
		trace(Bitmap);
		trace(BitmapText);
		trace(TextField);
		
		// filters:
		trace(Filter);
		trace(BlurFilter);
		trace(ColorMatrixFilter);
		trace(GlowFilter);
		trace(DropShadowFilter);
		trace(CustomFilter);
		
		// utils:
		trace(Endian.BIG_ENDIAN);
		trace(ByteArray);
		trace(SpriteSheet);
		trace(Base64Util);
		trace(Capabilities.language);
		trace(RuntimeType.BAIDUGAME);
		trace(Timer);
		
		// sys:
		trace(SystemTicker);
		
		// tween:
		trace(Ease);
		trace(Tween);
		
		// text:
		trace(BitmapFont);
		trace(HorizontalAlign.LEFT);
		trace(VerticalAlign.TOP);
		trace(TextFieldType.INPUT);
		trace(TextFieldInputType.TEL);
		
		// media:
		trace(Video);
		trace(Sound);
		trace(SoundChannel);
		
		// device:
		trace(DeviceOrientation);
	}
}