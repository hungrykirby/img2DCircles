class CirclesNoise extends PointColor {
  PImage img;
  int intervalOfPixels = 25;
  
  CirclesNoise(int intervalOfPixels, PImage img){
    super(intervalOfPixels, img);
    this.intervalOfPixels = intervalOfPixels;
    this.img = img;
  }
  
  void draw(){
    for(int x = 0; x < this.w; x += this.intervalOfPixels){
      for(int y = 0; y < this.h; y += this.intervalOfPixels){
        fill(this.pointColor[x][y]);
        circle(x, y, intervalOfPixels*2);
      }
    }
  }
}
