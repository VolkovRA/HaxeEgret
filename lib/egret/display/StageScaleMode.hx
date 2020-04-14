package egret.display;

/**
 * StageScaleMode class provides values for the stage zoom mode.
 * @version Egret 2.4
 * @platform Web,Native
 * @author VolkovRA
 */
@:enum abstract StageScaleMode(String) to String
{
	/**
	 * Do not scale application content. Even when you change the player viewport size, it remains unchanged.
	 * If the player is smaller than the viewport content, possibly with some cropping.
	 * 
	 * In this mode, the stage size (Stage.stageWidth, Stage.stageHeight) always with the player viewport size consistent.
	 */
	var NO_SCALE = "noScale";
	
	/**
	 * Keep the original aspect ratio scaling application content, after scaling a wide directions application content
	 * to fill the viewport players on both sides in the other direction may not be wide enough and left black bars.
	 * 
	 * In this mode, the stage size (Stage.stageWidth, Stage.stageHeight) is always equal to the initialization incoming
	 * external application content size.
	 */
	var SHOW_ALL = "showAll";
	
	/**
	 * Keep the original aspect ratio scaling application content, after scaling a narrow direction of application
	 * content to fill the viewport players on both sides in the other direction may exceed the viewport and the player is cut.
	 * 
	 * In this mode, the stage size (Stage.stageWidth, Stage.stageHeight) is always equal to the initialization incoming
	 * external application content size.
	 */
	var NO_BORDER = "noBorder";
	
	/**
	 * Do not keep the original aspect ratio scaling application content, after scaling application content just fill the player viewport.
	 * In this mode, the stage size (Stage.stageWidth, Stage.stageHeight) is always equal to the initialization incoming external application content size.
	 */
	var EXACT_FIT = "exactFit";
	
	/**
	 * Keep the original aspect ratio scaling application content, after scaling application content in the horizontal
	 * and vertical directions to fill the viewport player, but only to keep the contents of the original application
	 * constant width, height may change.
	 * 
	 * In this mode, the stage width (Stage.stageWidth) is always equal to initialize external incoming application
	 * content width. Stage height (Stage.stageHeight) by the current scale with the player viewport height decision.
	 */
	var FIXED_WIDTH = "fixedWidth";
	
	/**
	 * Keep the original aspect ratio scaling application content, after scaling application content in the horizontal
	 * and vertical directions to fill the viewport player, but only to keep the contents of the original application
	 * constant height, width may change.
	 * 
	 * In this mode, the stage height (Stage.stageHeight) is always equal to initialize external incoming application
	 * content height. Stage width (Stage.stageWidth) by the current scale with the player viewport width decision.
	 */
	var FIXED_HEIGHT = "fixedHeight";
	
	/**
	 * Keep the original aspect ratio scaling application content, after scaling application content in the horizontal
	 * and vertical directions to fill the viewport player,a narrow direction may not be wide enough and fill.
	 * 
	 * In this mode, the stage height (Stage.stageHeight) and the stage width (Stage.stageWidth) by the current scale
	 * with the player viewport size.
	 */
	var FIXED_NARROW = "fixedNarrow";
	
	/**
	 * Keep the original aspect ratio scaling application content, after scaling application content in the horizontal
	 * and vertical directions to fill the viewport player, a wide direction may exceed the viewport and the player is cut.
	 * 
	 * In this mode, the stage height (Stage.stageHeight) and the stage width (Stage.stageWidth) by the current scale
	 * with the player viewport size.
	 */
	var FIXED_WIDE = "fixedWide";
}