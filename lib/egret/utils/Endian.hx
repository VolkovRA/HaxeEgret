package egret.utils;

/**
 * The Endian class contains values that denote the byte order used to represent multibyte numbers.
 * The byte order is either bigEndian (most significant byte first) or littleEndian (least significant byte first).
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract Endian(String) to String
{
	/**
	 * Indicates the least significant byte of the multibyte number appears first in the sequence of bytes.
	 * The hexadecimal number 0x12345678 has 4 bytes (2 hexadecimal digits per byte).
	 * The most significant byte is 0x12.
	 * The least significant byte is 0x78. (For the equivalent decimal number, 305419896, the most significant digit is 3, and the least significant digit is 6).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var LITTLE_ENDIAN = "littleEndian";
	
	/**
	 * Indicates the most significant byte of the multibyte number appears first in the sequence of bytes.
	 * The hexadecimal number 0x12345678 has 4 bytes (2 hexadecimal digits per byte). 
	 * The most significant byte is 0x12.
	 * The least significant byte is 0x78. (For the equivalent decimal number, 305419896, the most significant digit is 3, and the least significant digit is 6).
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	var BIG_ENDIAN = "bigEndian";
}