package egret.display;

/**
 * The DisplayObjectContainer class is a basic display list building block: a display list node that can contain children.
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
@:native("egret.DisplayObjectContainer")
extern class DisplayObjectContainer extends DisplayObject 
{
	/**
	 * Creates a new DisplayObjectContainer instance.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function new();
	
	
	
	////////////////////
	//   PROPERTIES   //
	////////////////////
	
	/**
	 * Returns the number of children of this object.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var numChildren(default, null):Int;
	
	/**
	 * Determines whether or not the children of the object are touch, or user input device, enabled.
	 * If an object is enabled, a user can interact with it by using a touch or user input device.
	 * Default: true
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public var touchChildren:Bool;
	
	
	
	/////////////////
	//   METHODS   //
	/////////////////
	
	/**
	 * Set children sort mode.
	 * @param	modeThe sort mode.
	 * @see egret.ChildrenSortMode
	 * @version Egret 5.2.19
	 * @platform Native
	 */
	public function setChildrenSortMode(mode:ChildrenSortMode):Void;
	
	/**
	 * Adds a child DisplayObject instance to this DisplayObjectContainer instance.
	 * The child is added to the front (top) of all other children in this DisplayObjectContainer instance.
	 * (To add a child to a specific index position, use the addChildAt() method.)
	 * If you add a child object that already has a different display object container as a parent,
	 * the object is removed from the child list of the other display object container.
	 * @param	child The DisplayObject instance to add as a child of this DisplayObjectContainer instance.
	 * @return	The DisplayObject instance that you pass in the child parameter.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function addChild(child:DisplayObject):DisplayObject;
	
	/**
	 * Adds a child DisplayObject instance to this DisplayObjectContainer instance.
	 * The child is added at the index position specified.
	 * An index of 0 represents the back (bottom) of the display list for this DisplayObjectContainer object.
	 * If you add a child object that already has a different display object container as a parent, the object is removed
	 * from the child list of the other display object container.
	 * @param	child	The DisplayObject instance to add as a child of this DisplayObjectContainer instance.
	 * @param	index	The index position to which the child is added. If you specify a currently occupied index position,
	 * 			the child object that exists at that position and all higher positions are moved up one position in the child list.
	 * @return	The DisplayObject instance that you pass in the child parameter.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function addChildAt(child:DisplayObject, index:Int):DisplayObject;
	
	/**
	 * Determines whether the specified display object is a child of the DisplayObjectContainer instance or the instance itself.
	 * The search includes the entire display list including this DisplayObjectContainer instance.
	 * Grandchildren, great-grandchildren, and so on each return true.
	 * @param	child	The child object to test.
	 * @return	True if the child object is a child of the DisplayObjectContainer or the container itself; otherwise false.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function contains(child:DisplayObject):Bool;
	
	/**
	 * Returns the child display object instance that exists at the specified index.
	 * @param	index The index position of the child object.
	 * @return	The child display object at the specified index position.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getChildAt(index:Int):DisplayObject;
	
	/**
	 * Returns the index position of a child DisplayObject instance.
	 * @param	child The DisplayObject instance to identify.
	 * @return	The index position of the child display object to identify.
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getChildIndex(child:DisplayObject):Int;
	
	/**
	 * Returns the child display object that exists with the specified name.
	 * If more that one child display object has the specified name, the method returns the first object in the child list.
	 * The getChildAt() method is faster than the getChildByName() method.
	 * The getChildAt() method accesses a child from a cached array, whereas the getChildByName() method has to traverse a linked list to access a child.
	 * @param	name The name of the child to return.
	 * @return	The child display object with the specified name.
	 * @see #getChildAt()
	 * @see DisplayObject#name
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function getChildByName(name:String):DisplayObject;
	
	/**
	 * Removes the specified child DisplayObject instance from the child list of the DisplayObjectContainer instance.
	 * The parent property of the removed child is set to null, and the object is garbage collected if no other references to the child exist.
	 * The index positions of any display objects above the child in the DisplayObjectContainer are decreased by 1.
	 * @param	child The DisplayObject instance to remove.
	 * @return	The DisplayObject instance that you pass in the child parameter.
	 * @see #removeChildAt()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function removeChild(child:DisplayObject):DisplayObject;
	
	/**
	 * Removes a child DisplayObject from the specified index position in the child list of the DisplayObjectContainer.
	 * The parent property of the removed child is set to null, and the object is garbage collected if no other references to the child exist.
	 * The index positions of any display objects above the child in the DisplayObjectContainer are decreased by 1.
	 * @param	index The child index of the DisplayObject to remove.
	 * @return	The DisplayObject instance that was removed.
	 * @see #removeChild()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function removeChildAt(index:Int):DisplayObject;
	
	/**
	 * Changes the position of an existing child in the display object container.
	 * This affects the layering of child objects.
	 * @param	child	The child DisplayObject instance for which you want to change the index number.
	 * @param	index	The resulting index number for the child display object.
	 * @see #addChildAt()
	 * @see #getChildAt()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function setChildIndex(child:DisplayObject, index:Int):Void;
	
	/**
	 * Swaps the z-order (front-to-back order) of the child objects at the two specified index positions in the child list.
	 * All other child objects in the display object container remain in the same index positions.
	 * @param	index1	The index position of the first child object.
	 * @param	index2	The index position of the second child object.
	 * @see #swapChildren()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function swapChildrenAt(index1:Int, index2:Int):Void;
	
	/**
	 * Swaps the z-order (front-to-back order) of the two specified child objects.
	 * All other child objects in the display object container remain in the same index positions.
	 * @param	child1	The first child object.
	 * @param	child2	The second child object.
	 * @see #swapChildrenAt()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function swapChildren(child1:DisplayObject, child2:DisplayObject):Void;
	
	/**
	 * Removes all child DisplayObject instances from the child list of the DisplayObjectContainer instance.
	 * The parent property of the removed children is set to null, and the objects are garbage collected if no other references to the children exist.
	 * @see #removeChild()
	 * @see #removeChildAt()
	 * @version Egret 2.4
	 * @platform Web,Native
	 */
	public function removeChildren():Void;
}