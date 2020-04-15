package egret.tween;

/**
 * Easing function set.
 * Different easing functions are used to make an animation proceed according to the corresponding equation.
 * @see http://edn.egret.com/cn/index.php/article/index/id/53 Easing effect Demo
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:native("egret.Ease")
extern class Ease 
{
	/////////////////////////////
	//   EASING CONSTRUCTORS   //
	/////////////////////////////
	
	/**
	 * Get.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function get(amount:Float):EaseFunc;
	
	/**
	 * Get pow in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getPowIn(pow:Float):EaseFunc;
	
	/**
	 * Get pow out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getPowOut(pow:Float):EaseFunc;
	
	/**
	 * Get pow in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getPowInOut(pow:Float):EaseFunc;
	
	/**
	 * Get back in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getBackIn(amount:Float):EaseFunc;
	
	/**
	 * Get back out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getBackOut(amount:Float):EaseFunc;
	
	/**
	 * Get back in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getBackInOut(amount:Float):EaseFunc;
	
	/**
	 * Get elastic in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getElasticIn(amplitude:Float, period:Float):EaseFunc;
	
	/**
	 * Get elastic out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getElasticOut(amplitude:Float, period:Float):EaseFunc;
	
	/**
	 * Get elastic in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public function getElasticInOut(amplitude:Float, period:Float):EaseFunc;
	
	
	
	////////////////
	//   EASING   //
	////////////////
	
	/**
	 * Sine in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var sineIn:EaseFunc;
	
	/**
	 * Sine out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var sineOut:EaseFunc;
	
	/**
	 * Sine in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var sineInOut:EaseFunc;
	
	/**
	 * Circ in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var circIn:EaseFunc;
	
	/**
	 * Circ out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var circOut:EaseFunc;
	
	/**
	 * Circ in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var circInOut:EaseFunc;
	
	/**
	 * bounce in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var bounceIn:EaseFunc;
	
	/**
	 * Bounce out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var bounceOut:EaseFunc;
	
	/**
	 * Bounce in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var bounceInOut:EaseFunc;
	
	/**
	 * Quad in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quadIn:EaseFunc;
	
	/**
	 * Quad out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quadOut:EaseFunc;
	
	/**
	 * Quad in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quadInOut:EaseFunc;
	
	/**
	 * Cubic in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var cubicIn:EaseFunc;
	
	/**
	 * Cubic out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var cubicOut:EaseFunc;
	
	/**
	 * Cubic in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var cubicInOut:EaseFunc;
	
	/**
	 * Quart in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quartIn:EaseFunc;
	
	/**
	 * Quart out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quartOut:EaseFunc;
	
	/**
	 * Quart in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quartInOut:EaseFunc;
	
	/**
	 * Quint in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quintIn:EaseFunc;
	
	/**
	 * Quint out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quintOut:EaseFunc;
	
	/**
	 * Quint in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var quintInOut:EaseFunc;
	
	/**
	 * Back in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var backIn:EaseFunc;
	
	/**
	 * Back out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var backOut:EaseFunc;
	
	/**
	 * Back in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var backInOut:EaseFunc;
	
	/**
	 * Elastic in.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var elasticIn:EaseFunc;
	
	/**
	 * Elastic out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var elasticOut:EaseFunc;
	
	/**
	 * Elastic in out.
	 * See example.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	static public var elasticInOut:EaseFunc;
}