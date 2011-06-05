package com.qik.data {
  import flash.events.Event;

  /**
   * @author Artem Chernyshov
   */
  public class DataProviderEvent extends Event {
  	public static const NEW_ITEM:String = "newItem";
    public static const DELETE_ITEM:String = "deleteItem";
  public static const CLEAR:String = "clear";
  	
  	private var _item:*;
  	private var _index:int;

    public function DataProviderEvent(type:String, item:* = null, index:int = -1, bubbles:Boolean = false, cancelable:Boolean = false) {
      super(type, bubbles, cancelable);
      
      _item = item;
      _index = index;
    }

    public function get item():* {
      return _item;
    }
    
    public function get index():int {
      return _index;
    }
  }
}
