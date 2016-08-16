int ballY = 25;
int ballX = 250;
int score = 0;
String beginningMessage = "TO win, you need to score 20 points.";
String winningMessage = "Great job! You beat the game!";
void setup() {
  size(500,500);
}
   
void draw() {
  if(score==20) {
     background(0,255,0);
     textSize(30);
     text(winningMessage,30,250);
  }else{
  background(50,50,50);
  textSize(25);
  text(beginningMessage, 35, 250);
  ellipse(ballX,ballY,20,40);
  fill(0,136,221);
  noStroke();
  if(ballY>490) {
   checkCatch(ballX); 
  } 
  ballY=ballY+5;
  if(score>4 && score<10) {
   ballY=ballY+3; 
  } //else if(score>10<) {
   //ballY=ballY+6;
  }  
  if(ballY>500) {
    ballY = 25;
    ballX=(int)random(500);
  }
 rect(mouseX,425,50,80);
 fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
}

void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}



