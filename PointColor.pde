class PointColor {
  int intervalOfPixels;
  PImage img;
  
  public int w, h;
  
  color[][] pointColor;
  
  PointColor(int intervalOfPiexels, PImage img){
    this.intervalOfPixels = intervalOfPiexels;
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
