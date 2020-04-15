package egret.utils;

import js.lib.ArrayBuffer;
import js.lib.Uint8Array;

/**
 * The ByteArray class provides methods and attributes for optimized reading and writing as well as dealing with binary data.
 * Note: The ByteArray class is applied to the advanced developers who need to access data at the byte layer.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.ByteArray")
extern class ByteArray 
{
	/**
	 * Create a new ByteArray object.
	 * @param	buffer Source bytes.
	 * @param	bufferExtSize Size.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:overload(function(buffer:Uint8Array, ?bufferExtSize:Int):Void {})
	public function new(buffer:ArrayBuffer, ?bufferExtSize:Int);
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Changes or reads the byte order.
	 * Default: <code>Endian.BIG_ENDIAN</code>
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var endian:Endian;
	
	/**
	 * Readable remaining bytes.
	 */
	public var readAvailable(default, null):Int;
	
	/**
	 * Raw buffer.
	 */
	public var rawBuffer(default, null):ArrayBuffer;
	
	/**
	 * Bytes.
	 */
	public var bytes(default, null):Uint8Array;
	
	/**
	 * The current position of the file pointer (in bytes) to move or return to the ByteArray object.
	 * The next time you start reading reading method call in this position, or will start writing in this position next time call a write method.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var position:Int;
	
	/**
	 * The length of the ByteArray object (in bytes).
	 * If the length is set to be larger than the current length, the right-side zero padding byte array.
	 * If the length is set smaller than the current length, the byte array is truncated.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var length:Int;
	
	/**
	 * The number of bytes that can be read from the current position of the byte array to the end of the array data.
	 * When you access a ByteArray object, the bytesAvailable property in conjunction with the read methods each use to make sure you are reading valid data.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var bytesAvailable(default, null):Int;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Clears the contents of the byte array and resets the length and position properties to 0.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function clear():Void;
	
	/**
	 * Read a Boolean value from the byte stream. Read a simple byte. If the byte is non-zero, it returns true; otherwise, it returns false.
	 * @return If the byte is non-zero, it returns true; otherwise, it returns false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readBoolean():Bool;
	
	/**
	 * Read signed bytes from the byte stream.
	 * @return An integer ranging from -128 to 127
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readByte():Int;
	
	/**
	 * Read data byte number specified by the length parameter from the byte stream.
	 * Starting from the position specified by offset, read bytes into the ByteArray object specified by
	 * the bytes parameter, and write bytes into the target ByteArray
	 * @param	bytes	ByteArray object that data is read into.
	 * @param	offset	Offset (position) in bytes. Read data should be written from this position.
	 * @param	length	Byte number to be read Default value 0 indicates reading all available data.
	 */
	public function readBytes(bytes:ByteArray, offset:Int = 0, length:Int = 0):Void;
	
	/**
	 * Read an IEEE 754 double-precision (64 bit) floating point number from the byte stream.
	 * @return Double-precision (64 bit) floating point number.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readDouble():Float;
	
	/**
	 * Read an IEEE 754 single-precision (32 bit) floating point number from the byte stream.
	 * @return Single-precision (32 bit) floating point number.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readFloat():Float;
	
	/**
	 * Read a 32-bit signed integer from the byte stream.
	 * @return A 32-bit signed integer ranging from -2147483648 to 2147483647.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readInt():Int;
	
	/**
	 * Read a 16-bit signed integer from the byte stream.
	 * @return A 16-bit signed integer ranging from -32768 to 32767.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readShort():Int;
	
	/**
	 * Read unsigned bytes from the byte stream.
	 * @return A unsigned integer ranging from 0 to 255.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readUnsignedByte():UInt;
	
	/**
	 * Read a 32-bit unsigned integer from the byte stream.
	 * @return A 32-bit unsigned integer ranging from 0 to 4294967295.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readUnsignedInt():UInt;
	
	/**
	 * Read a 16-bit unsigned integer from the byte stream.
	 * @return A 16-bit unsigned integer ranging from 0 to 65535.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readUnsignedShort():UInt;
	
	/**
	 * Read a UTF-8 character string from the byte stream Assume that the prefix of the character
	 * string is a short unsigned integer (use byte to express length)
	 * @return UTF-8 character string.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readUTF():String;
	
	/**
	 * Read a UTF-8 byte sequence specified by the length parameter from the byte stream, and then return a character string.
	 * @param	Specify a short unsigned integer of the UTF-8 byte length.
	 * @return	A character string consists of UTF-8 bytes of the specified length.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function readUTFBytes(length:Int):String;
	
	/**
	 * Write a Boolean value.
	 * A single byte is written according to the value parameter.
	 * If the value is true, write 1.
	 * if the value is false, write 0.
	 * @param	value A Boolean value determining which byte is written. If the value is true, write 1; if the value is false, write 0.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeBoolean(value:Bool):Void;
	
	/**
	 * Write a byte into the byte stream
	 * The low 8 bits of the parameter are used. The high 24 bits are ignored.
	 * @param	value A 32-bit integer. The low 8 bits will be written into the byte stream
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeByte(value:Int):Void;
	
	/**
	 * Write the byte sequence that includes length bytes in the specified byte array, bytes, (starting at
	 * the byte specified by offset, using a zero-based index), into the byte stream
	 * If the length parameter is omitted, the default length value 0 is used and the entire buffer starting at offset is written.
	 * If the offset parameter is also omitted, the entire buffer is written.
	 * If the offset or length parameter is out of range, they are clamped to the beginning and end of the bytes array.
	 * @param	bytes	ByteArray Object.
	 * @param	offset	A zero-based index specifying the position into the array to begin writing.
	 * @param	length	An unsigned integer specifying how far into the buffer to write.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeBytes(bytes:ByteArray, offset:Int = 0, length:Int = 0):Void;
	
	/**
	 * Write an IEEE 754 double-precision (64 bit) floating point number into the byte stream.
	 * @param	value Double-precision (64 bit) floating point number.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeDouble(value:Float):Void;
	
	/**
	 * Write an IEEE 754 single-precision (32 bit) floating point number into the byte stream.
	 * @param	value Single-precision (32 bit) floating point number.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeFloat(value:Float):Void;
	
	/**
	 * Write a 32-bit signed integer into the byte stream.
	 * @param	value An integer to be written into the byte stream.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeInt(value:Int):Void;
	
	/**
	 * Write a 16-bit integer into the byte stream.
	 * The low 16 bits of the parameter are used. The high 16 bits are ignored.
	 * @param	value A 32-bit integer. Its low 16 bits will be written into the byte stream.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeShort(value:Int):Void;
	
	/**
	 * Write a 32-bit unsigned integer into the byte stream.
	 * @param	value An unsigned integer to be written into the byte stream.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeUnsignedInt(value:UInt):Void;
	
	/**
	 * Write a 16-bit unsigned integer into the byte stream.
	 * @param	value An unsigned integer to be written into the byte stream.
	 * @version Egret 2.5
	 * @platform Web,Native
	 */
	public function writeUnsignedShort(value:UInt):Void;
	
	/**
	 * Write a UTF-8 string into the byte stream.
	 * The length of the UTF-8 string in bytes is written first, as a 16-bit integer,
	 * followed by the bytes representing the characters of the string.
	 * @param	value Character string value to be written.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeUTF(value:String):Void;
	
	/**
	 * Write a UTF-8 string into the byte stream.
	 * Similar to the writeUTF() method, but the writeUTFBytes() method does not prefix the string with a 16-bit length word.
	 * @param	value Character string value to be written.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function writeUTFBytes(value:String):Void;
	
	/**
	 * Get ByteArray as string representation.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	@:noCompletion
	public function toString():String;
	
	@:deprecated
	@:noCompletion
	public function setArrayBuffer(buffer:ArrayBuffer):Void;
}