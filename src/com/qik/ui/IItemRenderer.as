package com.qik.ui {
  import flash.display.DisplayObject;

  /**
   * @author Artem Chernyshov
   */
  public interface IItemRenderer {
  	/**
  	 * Creates view using data model
  	 * Should be used in lists
  	 */
  	
  	function create(model:*):DisplayObject;
  }
}
