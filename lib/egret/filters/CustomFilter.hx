package egret.filters;

/**
 * Custom filter, now support WebGL mode only.
 * @version Egret 4.1.0
 * @platform Web
 * @author VolkovRA
 */
@:native("egret.CustomFilter")
extern class CustomFilter extends Filter 
{
	/**
	 * Initialize the CustomFilter object.
	 * @param	vertexSrc	Custom vertex shader program.
	 * @param	fragmentSrc	Custom fragment shader program.
	 * @param	uniforms	The initial value of the uniform in the shader (key, value one-to-one correspondence), currently only supports numbers and arrays.
	 */
	public function new(vertexSrc:String, fragmentSrc:String, ?uniforms:Dynamic);
	
	/**
	 * The inner margin of the filter.
	 * If the desired area of the custom filter is larger than the original area (stroke, etc.), you need to set it manually.
	 * @version Egret 4.1.0
	 * @platform Web
	 */
	public var padding:Float;
	
	/**
	 * The initial value of the uniform in the shader (key, value one-to-one correspondence), currently only supports numbers and arrays.
	 * @version Egret 4.1.0
	 * @platform Web
	 */
	public var uniforms(default, null):Dynamic;
}