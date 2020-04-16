package egret.display;

import egret.text.BitmapFont;
import egret.text.HorizontalAlign;
import egret.text.VerticalAlign;

/**
 * Bitmap font adopts the Bitmap+SpriteSheet mode to render text.
 * 
 * @event Event.ADDED						Dispatched when a display object is added to the display list.
 * 
 * @event Event.ADDED_TO_STAGE				Dispatched when a display object is added to the on stage display list, either
 * 											directly or through the addition of a sub tree in which the display object is contained.
 * 
 * @event Event.REMOVED						Dispatched when a display object is about to be removed from the display list.
 * 
 * @event Event.REMOVED_FROM_STAGE			Dispatched when a display object is about to be removed from the display list, either
 * 											directly or through the removal of a sub tree in which the display object is contained.
 *
 * @event Event.ENTER_FRAME					[broadcast event] Dispatched when the playhead is entering a new frame.
 * 
 * @event Event.RENDER						[broadcast event] Dispatched when the display list is about to be updated and rendered.
 * 
 * @event TouchEvent.TOUCH_MOVE				Dispatched when the user touches the device, and is continuously dispatched until the
 * 											point of contact is removed.
 * 
 * @event TouchEvent.TOUCH_BEGIN			Dispatched when the user first contacts a touch-enabled device (such as touches a finger
 * 											to a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_END				Dispatched when the user removes contact with a touch-enabled device (such as lifts a
 * 											finger off a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_TAP				Dispatched when the user lifts the point of contact over the same DisplayObject instance
 * 											on which the contact was initiated on a touch-enabled device (such as presses and releases
 * 											a finger from a single point over a display object on a mobile phone or tablet with a touch screen).
 * 
 * @event TouchEvent.TOUCH_RELEASE_OUTSIDE	Dispatched when the user lifts the point of contact over the different DisplayObject
 * 											instance on which the contact was initiated on a touch-enabled device (such as presses and
 * 											releases a finger from a single point over a display object on a mobile phone or tablet
 * 											with a touch screen).
 * 
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.BitmapText")
extern class BitmapText extends DisplayObject 
{
	/**
	 * Create an egret.BitmapText object
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * A ratio of the width of the space character.
	 * This value is multiplied by the height of the first character is the space character width.
	 * Default: 0.33
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var EMPTY_FACTOR:Float;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Whether or not is smoothed when scaled.
	 * Default: true
	 * @version Egret 3.0
	 * @platform Web
	 */
	public var smoothing:Bool;
	
	/**
	 * A string to display in the text field.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var text:String;
	
	/**
	 * Font.
	 * Default: null
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var font:BitmapFont;
	
	/**
	 * An integer representing the amount of vertical space between lines.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var lineSpacing:Int;
	
	/**
	 * An integer representing the amount of distance between characters.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var letterSpacing:Int;
	
	/**
	 * Horizontal alignment of text.
	 * Default： <code>HorizontalAlign.LEFT</code>
	 * @version Egret 2.5.6
	 * @platform Web,Native
	 */
	public var textAlign:HorizontalAlign;
	
	/**
	 * Vertical alignment of text.
	 * Default： <code>VerticalAlign.TOP</code>
	 * @version Egret 2.5.6
	 * @platform Web,Native
	 */
	public var verticalAlign:VerticalAlign;
	
	/**
	 * Get the BitmapText measured width.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textWidth(default, null):Float;
	
	/**
	 * Get the BitmapText height.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textHeight(default, null):Float;
}