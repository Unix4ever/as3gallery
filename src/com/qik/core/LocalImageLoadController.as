package com.qik.core {
	import com.qik.models.ThumbnailModel;
  import flash.filesystem.File;

  /**
   * @author Artem Chernyshov
   */
  public class LocalImageLoadController {
    private var _browseDirectory:File;
    
    private var _files:Array;
    
    private var _filePattern:RegExp = /\.jpg$/;
    public function loadImages(onComplete:Function):void {
      _files = _browseDirectory.getDirectoryListing();
      var images:Array = [];
      
      var path:String;
      for each( var file:File in _files){
      	path = file.nativePath.toLowerCase();
      	if(_filePattern.exec(path)){
          images.push(new ThumbnailModel("file://"+path));
        }
      }
    	
      onComplete(images);
    }

    public function setBrowseDirectory(folderPath:String):void {
    	_browseDirectory = new File(folderPath);
    	
    	if(!_browseDirectory.isDirectory || !_browseDirectory.exists) {
        throw new Error("おい！！！なんでこれが？？");
    	}
    }
  	
  }
}
