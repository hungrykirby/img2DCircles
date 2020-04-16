class PointColor {
  int intervalOfPixels;
  PImage img;
  
  public int w, h;
  
  color[][] pointColor;
  
  PointColor(int intervalOfPiexels, PImage img){
    this.intervalOfPixels = intervalOfPiexels;
    this.img = img;
    w = img.width;
    h = img.height;
    loadPixels();
    this.pointColor = new color[w][h];
    
    for(int i = 0; i < w; i += 1){
      for(int j = 0; j < h; j += 1){
        color c =img.pixels[j * w + i];
        this.pointColor[i][j] = c;
      }
    }
    
    surface.setResizable(true);
    surface.setSize(this.w, this.h);
    noStroke();
  }
  
  
}

class ReturnValues {
  public int x;
  public int y;
  
  ReturnValues(int _x, int _y){
    x = _x;
    y = _y;
  }
}

class Called {
  
  int x, y;
  
  Called(int _x, int _y){
    x = _x; y = _y;
  }
  
  public ReturnValues method() {
    ReturnValues value = new ReturnValues(x, y);
    value.x = x;
    value.y = y;
    return value;
  }
  
}
