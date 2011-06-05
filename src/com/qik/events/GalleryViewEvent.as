package com.qik.events {
  import Boolean;
  import String;
  import flash.events.Event;

  /**
   * @author Artem Chernyshov
   */
  public class GalleryViewEvent extends Event {
  	public static const LOAD_THUMBNAILS:String = "loadThumbnails";
  	public static const CHANGE_FOLDER:String = "changeFolder";
  	
    public function GalleryViewEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
      super(type, bubbles, cancelable);
    }
  }
}
