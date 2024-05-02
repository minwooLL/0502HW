class Bonobono {
  Bonobono() {
    x = 200;
    y = 600;
    d = 15; // 움직일 캐릭터의 처음 위치
  }
  float x, y, d;
  void show() {
  fill(130, 190 ,222);
  circle(x,y,d*10);
  fill(0,0,0);
  circle(x-d*3, y-d*2, d*1.2);
  circle(x+d*3, y-d*2, d*1.2);
  fill(250,250,250);
  ellipse(x-d, y+d*2, d*2, d*2.5);
  ellipse(x+d, y+d*2, d*2, d*2.5);
  fill(0,0,0);
  circle(x, y+d, d*2.2);
  
  line(x-d*1.5, y+d*2.5, x-d*2.8, y+d*2.8);
  line(x-d*1.5, y+d*2, x-d*3, y+d*2);
  line(x-d*1.5, y+d*1.5, x-d*2.8, y+d*1.2);

  line(x+d*1.5, y+d*2.5, x+d*2.8, y+d*2.8);
  line(x+d*1.5, y+d*2, x+d*3, y+d*2);
  line(x+d*1.5, y+d*1.5, x+d*2.8, y+d*1.2);
}
    int collide(tomas m) {
    float dx = x - m.x;
    float dy = y - m.y;
    float s = sqrt(dx*dx + dy*dy);
    if (s < m.k) return 300;
    else return 0;
  }
  void keyMove() {
    x = mouseX;
    y= mouseY;
  }
} // end of class
