PImage imgJaga;
int intervalOfPixels = 25;
color[][] pointColor;
int iW, iH;
int randomInteravl = 50;

void setup() {
  size(800, 800);
  imgJaga = loadImage("himawari.png");
  iW = imgJaga.width;
  iH = imgJaga.height;
  pointColor = new color[iW][iH];
  for(int i = 0; i < iW; i += 1){
    for(int j = 0; j < iH; j += 1){
      color c =imgJaga.pixels[j * iW + i];
      pointColor[i][j] = c;
    }
  }
  loadPixels();
  noStroke();
  surface.setResizable(true);
  surface.setSize(imgJaga.width, imgJaga.height);
}

void draw(){
  background(255);
  // image(imgJaga, 0, 0);
  for(int x = 0; x < iW; x += intervalOfPixels){
    for(int y = 0; y < iH; y += intervalOfPixels){
      fill(pointColor[x][y]);
      float x1 = random(x - randomInteravl, x + randomInteravl);
      float x2 = random(x - randomInteravl, x + randomInteravl);
      float x3 = random(x - randomInteravl, x + randomInteravl);
      float y1 = random(y - randomInteravl, y + randomInteravl);
      float y2 = random(y - randomInteravl, y + randomInteravl);
      float y3 = random(y - randomInteravl, y + randomInteravl);
      // triangle(x1, y1, x2, y2, x3, y3);
      
      circle(x, y, intervalOfPixels*2);
    }
  }
  if(frameCount == 10){
    save("test2.png");
  }
}
