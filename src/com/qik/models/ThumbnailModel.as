package com.qik.models {

  /**
   * @author Artem Chernyshov
   */
  public class ThumbnailModel {
  	private var _imageURL:String;
  	private var _fileSize:String;
  	private var _name:String;
  	
  	public function ThumbnailModel(url:String) {
      _imageURL = url;
    }

    public function get imageURL():String {
      return _imageURL;
    }
    
    public function set imageURL(imageURL:String):void {
      _imageURL = imageURL;
    }
    
    public function get fileSize():String {
      return _fileSize;
    }
    
    public function set fileSize(fileSize:String):void {
      _fileSize = fileSize;
    }
    
    public function get name():String {
      return _name;
    }
    
    public function set name(name:String):void {
      _name = name;
    }
  }
}
