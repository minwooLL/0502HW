Bonobono ss; // 전역변수 선언 (캐릭터의 위치, 크기 정보)
tomas [] mm; // (x, y, d)는 몬스터의의 정보
int keepText = 0, goal = 0;
 float goalX, goalY;
void setup(){
  size(1800,970);
  ss = new Bonobono();
  mm = new tomas[7];
  for(int i = 1; i < 7; i++){
    mm[i] = new tomas(i,3);
  }
  for( int i =0; i<1; i++){
    mm[i] = new tomas(i,3);
  }
  goalX = random(0,width - 50); // 골인 지점이 화면 밖으로 나가지 않도록 설정
  goalY = random(0,height-100);
}
void draw(){
  background(92, 255, 209);
  if(keepText != 0){
    showover();
  noLoop();
  }
  else if(goal != 0) showclear(); 
  else Success(ss.x, ss.y);
  
  ss.show();
  for(int i = 0; i < 7; i++){
    mm[i].update();  
    mm[i].show();  
    if(keepText == 0) keepText = ss.collide(mm[i]);    
  }
}
void resetgoal(){
  goalX = random(0,width - 50); // 골인 지점이 화면 밖으로 나가지 않도록 설정
  goalY = random(0,height-100);
}
void mouseMoved(){
  ss.keyMove();
}
