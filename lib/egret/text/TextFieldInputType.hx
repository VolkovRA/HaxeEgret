package egret.text;

/**
 * TextFieldInputType enum is an enumeration of constant value used in setting the inputType property of the TextField class.
 * @version Egret 3.1.2
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract TextFieldInputType(String) to String
{
	/**
	 * The default.
	 * @version Egret 3.1.2
	 * @platform Web,Native
	 */
	var TEXT = "text";
	
	/**
	 * Telephone Number Inputs.
	 * @version Egret 3.1.2
	 * @platform Web,Native
	 */
	var TEL = "tel";
	
	/**
	 * Password Inputs.
	 * @version Egret 3.1.2
	 * @platform Web,Native
	 */
	var PASSWORD = "password";
}