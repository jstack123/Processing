int ballY = 25;
int ballX = 250;
int rballX = 25;
int rballY = 255;
int score = 0;
String beginningMessage = "TO win, you need to score 20 points.";
String winningMessage = "Great job! You beat the game!";
void setup() {
  size(500,500);
}
   
void draw() {
  if(score==20) {
     background(0,255,90);
     fill(255,0,0);
     textSize(30);
     text(winningMessage,30,250);

  }else{
  background(50,50,50);
  textSize(25);
  fill(0,255,0);
  text(beginningMessage, 35, 250);
  fill(0,0,255);
  ellipse(ballX,ballY,20,40);
  fill(255,0,0);
  ellipse(rballX,rballY,20,40);
  fill(0,136,221);
  noStroke();
  if(ballY>485) {
   checkCatch(ballX); 
  } 
  if(rballY>485) {
   checkRedCatch(rballX); 
  } 
  ballY=ballY+10;
  rballY=rballY+10;
  if(score>4 && score<10) {
   ballY=ballY+3; 
  } else if(score>9 && score<15) {
   ballY=ballY+4;
  } else if(score>14) {
    ballY=ballY+5;
  }  
  if(ballY>500) {
    ballY = 25;
    ballX=(int)random(500);
  }
  if(rballY>500) {
    rballY = 25;
   rballX=(int)random(500); 
  }  
  
 rect(mouseX,425,50,80);
fill(255,0,0);
textSize(16);
text("Score: " + score, 20, 20);
fill(0);
}
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
void checkRedCatch(int rx){
if (rx > mouseX && rx < mouseX+100)
      score--;
println("Your score is now: " + score);
}
  
  



