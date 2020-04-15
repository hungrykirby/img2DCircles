class TriangleNoise extends PointColor {
  int randomInteravl = 20;
 
  TriangleNoise(int intervalOfPixels, PImage img){
    super(intervalOfPixels, img);
  }
  
  void setRandomInterval(int _randomInteravl){
    randomInteravl = _randomInteravl;
  }
  
  void draw(){
    for(int x = 0; x < this.w; x += this.intervalOfPixels){
      for(int y = 0; y < this.h; y += this.intervalOfPixels){
        fill(this.pointColor[x][y]);
        float x1 = random(x - randomInteravl, x + randomInteravl);
        float x2 = random(x - randomInteravl, x + randomInteravl);
        float x3 = random(x - randomInteravl, x + randomInteravl);
        float y1 = random(y - randomInteravl, y + randomInteravl);
        float y2 = random(y - randomInteravl, y + randomInteravl);
        float y3 = random(y - randomInteravl, y + randomInteravl);
        triangle(x1, y1, x2, y2, x3, y3);
      }
    }
  }
}
