import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int x = 100;
int y = 250;
int ballSpeedX = 5;
int ballSpeedY = 5;
int height = 500;
int width = 500;
int ballRadius = 25;
//int paddleX = 
//int paddleY = 
int paddleLength = 90;
int score = 0;
void setup() {
  size(width,height);
  minim = new Minim(this);
  sound = minim.loadSample("PongSound.wav");
  backgroundImage = loadImage("PongBackground.png");
}
void draw() {
  image(backgroundImage, 0, 0, 500, 500);
  text(score, 250,250);
  //background(0,0,255 );
  x=x+ballSpeedX;
  y=y+ballSpeedY;
  ellipse(x, y, 2*ballRadius, 2*ballRadius);
  fill(255, 0, 0);
  noStroke();
  rect(mouseX, 490, paddleLength, 10);
  if (x+ballRadius>width) {
    ballSpeedX=-ballSpeedX;
  }
  if (y+ballRadius>height) {
    ballSpeedY=-ballSpeedY;
  }  
  if (x-ballRadius<0) {
    ballSpeedX=-ballSpeedX;
  }
  if (y-ballRadius<0) {
    ballSpeedY=-ballSpeedY;
  }  
  if (y+ballRadius>width) {
    sound.trigger();
  }    
 boolean paddleBounce = intersects(x,y,mouseX,550,paddleLength);
 if(paddleBounce==true && ballSpeedY > 0) {
   score++;
   ballSpeedY=-ballSpeedY;
 } 
}  
 boolean intersects(int x, int y, int paddleX, int paddleY, int paddleLength) {
    if (y > paddleY - paddleLength && y < paddleY - 10 && x > paddleX && x < paddleX + paddleLength)
      return true;
    else 
      return false;
  }
  
