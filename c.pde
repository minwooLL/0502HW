void Success(float x, float y){ 
  fill(153, 204, 255); // 골인지점의 색깔 하늘색
  rect(goalX,goalY, 200, 300); // 골인 지점의 크기 및 표시
  if(x > goalX && x< goalX+200 && y>goalY &&y< goalY + 300) 
      goal = 300;
}
void showclear(){
    goal--;    
    fill(255,0,0);
    textSize(100);
    text("Clear!", width/2, height/2);
}
void showover(){
    keepText --;
    fill(255,0,0);
    textSize(100);
    text("You Died...", width/2, height/2);
}
