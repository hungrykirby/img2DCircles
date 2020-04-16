class SankakuNoise extends PointColor {
  int[][] xs;
  int[][] ys;
  int xsL, ysL;

 
  SankakuNoise(int intervalOfPixels, PImage img){
    super(intervalOfPixels, img);
    
    for(int i = 0; i < this.w; i += 1){
      for(int j = 0; j < this.h; j += 1){
      }
    }
    
    int ip = this.intervalOfPixels;
    
    xs = new int[int(this.w/ip) + 1][int(this.h/ip) + 1];
    ys = new int[int(this.w/ip) + 1][int(this.h/ip) + 1];
    
    for(int x = 0; x < this.w; x += ip){
      for(int y = 0; y < this.h; y += ip){
        int xx = x;
        /*
        // ここでいい感じにずらそうと思ったが、その必要は画像を見る限りなさそう。
        if(int(y/ip) % 2 == 0){
          xx += int(ip/2);
        }*/
        int yy = y;
        xx += random(0, ip); // ここは0以上を指定しないとdraw内でエラーになる可能性がある
        yy += random(0, ip);
        xs[int(x/ip)][int(y/ip)] = xx;
        ys[int(x/ip)][int(y/ip)] = yy;
      }
    }
    xsL = int(this.w/ip);
    ysL = int(this.h/ip);
  }
  
  
  void draw(){
    for(int i = 1; i < xsL - 1; i++){
      for(int j = 1; j < ysL - 1; j++){
        int x = xs[i][j];
        int y = ys[i][j];
        int x2 = xs[i + 1][j];
        int y2 = ys[i + 1][j];
        
        int x3 = min(xs[i][j + 1], this.w - 1); // 画面外の点を参照することを避ける
        int y3 = min(ys[i][j + 1], this.h - 1);
        fill(this.pointColor[x3][y3]);
        triangle(x, y, x2, y2, x3, y3);
        
        int x4 = min(xs[i + 1][j - 1], this.w - 1);
        int y4 = min(ys[i + 1][j - 1], this.h - 1);
        fill(this.pointColor[x4][y4]);
        triangle(x, y, x2, y2, x4, y4);

      }
    }   
  }
}
