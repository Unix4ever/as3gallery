package com.qik.ui {
  import com.qik.ui.IItemRenderer;

  import flash.display.DisplayObject;

  /**
   * @author Artem Chernyshov
   */
  public class ThubnailItemFactory implements IItemRenderer {
    public function create(model:*):DisplayObject {
      return new ThumbnailListRenderer(model);
    }
  }
}
