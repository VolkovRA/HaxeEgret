package egret.text;

/**
 * TextFieldType class is an enumeration of constant value used in setting the type property of the TextField class.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract TextFieldType(String) to String
{
	/**
	 * Used to specify dynamic text.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var DYNAMIC = "dynamic";
	
	/**
	 * Used to specify the input text.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var INPUT = "input";
}