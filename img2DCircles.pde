CirclesNoise cn;
TriangleNoise tn;
SankakuNoise sn;

// 1 => circlenoise
// 2 => TriangleNoise
// 3 => SankakuNoise
static final int typeOfClass = 3;

void setup() {
  size(800, 800);
  PImage img = loadImage("himawari.png");
  noLoop();
  switch(typeOfClass){
    case 1:
      cn = new CirclesNoise(2, img);
      break;
    case 2:
      tn = new TriangleNoise(3, img);
      tn.setRandomInterval(20);
      break;
    case 3:
      sn = new SankakuNoise(50, img); 
  }
}

void draw(){
  background(255);
  switch(typeOfClass){
    case 1:
      cn.draw();
      break;
    case 2:
      tn.draw();
      break;
    case 3:
     sn.draw();
     break;
  }
}
