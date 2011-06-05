package com.qik.ui {
  import fl.containers.UILoader;

  import com.qik.models.ThumbnailModel;

  import flash.display.Sprite;
  import flash.net.URLRequest;

  /**
   * @author Artem Chernyshov
   */
  public class ThumbnailListRenderer extends Sprite {
  	public var loader:UILoader;
  	
  	private var _model:ThumbnailModel;
  	
    public function ThumbnailListRenderer(model:ThumbnailModel) {
      _model = model;
      width = 200;
      height = 50;
      updateView();
    }
    
    private function updateView():void {
    	loader.load(new URLRequest(_model.imageURL));
    }
  }
}
