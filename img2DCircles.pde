CirclesNoise cn;
TriangleNoise tn;

void setup() {
  size(800, 800);
  PImage img = loadImage("himawari.png");
  // cn = new CirclesNoise(2, img);
  tn = new TriangleNoise(25, img);
  tn.setRandomInterval(20);
}

void draw(){
  background(255);
  // cn.draw();
  tn.draw();
}
