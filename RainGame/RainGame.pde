int ballY = 25;
int ballX = 250;
int score = 0;
void setup() {
  size(500,500);
}
   
void draw() {
  background(50,50,50);
  ellipse(ballX,ballY,20,40);
  fill(0,136,221);
  noStroke();
  ballY=ballY + 8;
  if(ballY>500) {
    ballY = 25;
    ballX=(int)random(500);
  }
 rect(mouseX,425,50,80);
 checkCatch(ballX);
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



