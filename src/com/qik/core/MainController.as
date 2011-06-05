package com.qik.core {

	import com.qik.events.GalleryViewEvent;
  /**
   * @author Artem Chernyshov
   */
  public class MainController {
  	private var _localImageLoadController:LocalImageLoadController = new LocalImageLoadController();
  	private var _view:Gallery;
  	
  	public function MainController(view:Gallery){
  		_view = view;
  		
  		_view.addEventListener(GalleryViewEvent.LOAD_THUMBNAILS, handleLoadThumbnails);
  		_view.addEventListener(GalleryViewEvent.CHANGE_FOLDER, handleChangeFolder);
  		
  		_localImageLoadController.setBrowseDirectory("/Users/artem/Pictures");
    }

    private function handleLoadThumbnails(event:GalleryViewEvent):void {
    	trace("Got event "+event.type);
    	
      _localImageLoadController.loadImages(onLoadImages);
    }
    
    private function handleChangeFolder(event:GalleryViewEvent):void {
      _localImageLoadController.setBrowseDirectory(_view.folderPath);
    }

    private function onLoadImages(images:Array):void {
    	trace(images);
    	
    	_view.showThumbnails(images);
    }
    
    
  }
}
