class tomas {
  tomas(int i, int f) {
    this.f=f;
    x = random(width/4,width-width/4);
    y = random(height);
    d = 20;
    v = 4 + 3*i;
    vx = 4+ 3*f;
    k = 60 + d/2; //부딧히는거 때문
  }
  float x, y, d, v,vx, k;
  int f ;
  void update() {
    y += v;
    x += vx;
    if (y > height || y < 0){
      v = -v;
    }
    if (x > width || x < 0){
      vx = -vx;
    }
  }
  void show() {
  strokeWeight(5);
  fill(0,0,0);
  square(x-d*2,y-d*7,d*4);
  
  fill(211,211,211);
  circle(x,y,d*10);
  
  fill(255,255,255);
  circle(x-d*2,y-d*2,d*3);
  circle(x+d*2,y-d*2,d*3);
  
  fill(0,0,0);
  circle(x-d*2.5,y-d*2,d*2);
  circle(x+d*1.5,y-d*2,d*2);
  
  arc(x,y+d,d*6,d*4,0,PI);
  }
}
