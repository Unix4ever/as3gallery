package com.qik.data {

	import flash.events.EventDispatcher;
  /**
   * @author Artem Chernyshov
   */
  public class DataProvider extends EventDispatcher{
  	
  	private var _items:Array = [];
  	public function addItem(model:*):void{
  		addItemAt(model, _items.length);
    }

    public function addItemAt(model:*, index:uint):void {
      _items.splice(index,0,model);
      
      dispatchEvent(new DataProviderEvent(DataProviderEvent.NEW_ITEM, model, index));
    }
    
    public function removeItemAt(index:uint):void {
      var item:* = _items.splice(index, 1)[0];
      
      dispatchEvent(new DataProviderEvent(DataProviderEvent.DELETE_ITEM, item, index));
    }
    
    public function clear():void {
      _items.splice(0);
      dispatchEvent(new DataProviderEvent(DataProviderEvent.CLEAR));
    }
  }
}
