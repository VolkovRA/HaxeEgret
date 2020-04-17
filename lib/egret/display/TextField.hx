package egret.display;

import egret.text.HorizontalAlign;
import egret.text.ITextElement;
import egret.text.TextFieldInputType;
import egret.text.TextFieldType;
import egret.text.VerticalAlign;

/**
 * TextField is the text rendering class of egret. It conducts rendering by using the browser / device API.
 * Due to different ways of font rendering in different browsers / devices, there may be differences in the rendering
 * If developers expect  no differences among all platforms, please use BitmapText
 * @see http://edn.egret.com/cn/docs/page/141 Create Text
 *
 * @event Event.CHANGE						Dispatched when entering text user input.
 * 
 * @event FocusEvent.FOCUS_IN				Dispatched after the focus to enter text.
 * 
 * @event FocusEvent.FOCUS_OUT				Enter the text loses focus after dispatch.
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
@:native("egret.TextField")
extern class TextField extends DisplayObject 
{
	/**
	 * Initializes a TextField object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	
	
	////////////////
	//   STATIC   //
	////////////////
	
	/**
	 * Default fontFamily.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var default_fontFamily:String;
	
	/**
	 * Default size in pixels of text.
	 * @version Egret 3.2.1
	 * @platform Web,Native
	 */
	static public var default_size:Float;
	
	/**
	 * Default color of the text.
	 * @version Egret 3.2.1
	 * @platform Web,Native
	 */
	static public var default_textColor:Int;
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * The name of the font to use, or a comma-separated list of font names.
	 * Default: "Arial"
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var fontFamily:String;
	
	/**
	 * The size in pixels of text.
	 * Default: 30
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var size:Float;
	
	/**
	 * Specifies whether the text is boldface.
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bold:Bool;
	
	/**
	 * Determines whether the text is italic font.
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var italic:Bool;
	
	/**
	 * Horizontal alignment of text.
	 * Default： <code>HorizontalAlign.LEFT</code>
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textAlign:HorizontalAlign;
	
	/**
	 * Vertical alignment of text.
	 * Default: <code>VerticalAlign.TOP</code>
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var verticalAlign:VerticalAlign;
	
	/**
	 * An integer representing the amount of vertical space between lines.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var lineSpacing:Int;
	
	/**
	 * Color of the text.
	 * Default: 0x000000
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textColor:Int;
	
	/**
	 * A Boolean value that indicates whether the text field word wrap.
	 * If the value is true, then the text field by word wrap.
	 * if the value is false, the text field by newline characters.
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var wordWrap:Bool;
	
	/**
	 * Type of the text field.
	 * Any one of the following TextFieldType constants: TextFieldType.DYNAMIC (specifies the dynamic text field that users can not edit),
	 * or TextFieldType.INPUT (specifies the dynamic text field that users can edit).
	 * Default: <code>TextFieldType.DYNAMIC</code>
	 */
	public var type:TextFieldType;
	
	/**
	 * Pop-up keyboard type.
	 * Any of a TextFieldInputType constants.
	 * @version Egret 3.1.2
	 * @platform Web,Native
	 */
	public var inputType:TextFieldInputType;
	
	/**
	 * Serve as a string of the current text field in the text.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var text:String;
	
	/**
	 * Specify whether the text field is a password text field.
	 * If the value of this property is true, the text field is treated as a password text field and hides the input characters using asterisks instead of the actual characters.
	 * If false, the text field is not treated as a password text field.
	 * Default: false
	 */
	public var displayAsPassword:Bool;
	
	/**
	 * Represent the stroke color of the text.
	 * Contain three 8-bit numbers with RGB color components.
	 * For example, 0xFF0000 is red, 0x00FF00 is green.
	 * Default: 0x000000
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var strokeColor:Int;
	
	/**
	 * Indicate the stroke width.
	 * 0 means no stroke.
	 * Default: 0
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var stroke:Float;
	
	/**
	 * The maximum number of characters that the text field can contain, as entered by a user.
	 * A script can insert more text than maxChars allows. The maxChars property indicates only how much text a user can enter.
	 * If the value of this property is 0, a user can enter an unlimited amount of text.
	 * The default value is 0.
	 * Default: 0
	 */
	public var maxChars:Int;
	
	/**
	 * Vertical position of text in a text field.
	 * scrollV property helps users locate specific passages in a long article, and create scrolling text fields.
	 * Vertically scrolling units are lines, and horizontal scrolling unit is pixels.
	 * If the first displayed line is the first line in the text field, scrollV is set to 1 (instead of 0).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var scrollV:Int;
	
	/**
	 * The maximum value of scrollV.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var maxScrollV(default, null):Int;
	
	/**
	 * Number of lines of text.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var numLines(default, null):Int;
	
	/**
	 * Indicate whether field is a multiline text field.
	 * Note that this property is valid only when the type is TextFieldType.INPUT.
	 * If the value is true, the text field is multiline.
	 * if the value is false, the text field is a single-line text field.
	 * In a field of type TextFieldType.INPUT, the multiline value determines whether the Enter key creates a new line (a value of false, and the Enter key is ignored).
	 * Default: false
	 */
	public var multiline:Bool;
	
	/**
	 * Indicates a user can enter into the text field character set.
	 * If you restrict property is null, you can enter any character.
	 * If you restrict property is an empty string, you can not enter any character.
	 * If you restrict property is a string of characters, you can enter only characters in the string in the text field. The string is scanned from left to right.
	 * You can use a hyphen (-) to specify a range. Only restricts user interaction, a script may put any text into the text field.
	 * If the string of characters caret (^) at the beginning, all characters are initially accepted, then the string are excluded from receiving ^ character.
	 * If the string does not begin with a caret (^) to, any characters are initially accepted and then a string of characters included in the set of accepted characters.
	 * 
	 * The following example allows only uppercase characters, spaces, and numbers in the text field:
	 * <code>My_txt.restrict = "A-Z 0-9";</code>
	 * 
	 * The following example includes all characters except lowercase letters:
	 * <code>My_txt.restrict = "^ a-z";</code>
	 * 
	 * If you need to enter characters \ ^, use two backslash "\\ -" "\\ ^":
	 * Can be used anywhere in the string ^ to rule out including characters and switch between characters, but can only be used to exclude a ^.
	 * 
	 * The following code includes only uppercase letters except uppercase Q:
	 * <code>My_txt.restrict = "A-Z ^ Q";</code>
	 * 
	 * Default: null
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var restrict:String;
	
	/**
	 * Specifies whether the text field has a border.
	 * If true, the text field has a border. If false, the text field has no border.
	 * Use borderColor property to set the border color.
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var border:Bool;
	
	/**
	 * The color of the text field border.
	 * Even currently is no border can be retrieved or set this property, but only if the text field has the border property is set to true, the color is visible.
	 * Default: 0x000000
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var borderColor:Int;
	
	/**
	 * Specifies whether the text field has a background fill.
	 * If true, the text field has a background fill.
	 * If false, the text field has no background fill.
	 * Use the backgroundColor property to set the background color of the text field.
	 * Default: false
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var background:Bool;
	
	/**
	 * Color of the text field background.
	 * Even currently is no background, can be retrieved or set this property, but only if the text field has the background property set to true, the color is visible.
	 * Default: 0xFFFFFF
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var backgroundColor:Int;
	
	/**
	 * Set rich text.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textFlow:Array<ITextElement>;
	
	/**
	 * Get the text measured width.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textWidth(default, null):Float;
	
	/**
	 * Get Text measuring height.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var textHeight(default, null):Float;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Enter the text automatically entered into the input state, the input type is text only and may only be invoked in the user interaction.
	 * @version Egret 3.0.8
	 * @platform Web,Native
	 */
	public function setFocus():Void;
}