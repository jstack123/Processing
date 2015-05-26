import ddf.minim.*;       
int width = 500;
int height = 500;
int moveX = 3;
int moveY = 3;
int ballX = 50; 
int ballY = 250;
int ballSize = 20;
Minim minim;        
AudioSample sound;
PImage backgroundImage;
int paddleWidth = 40;
int paddleHeight = 10;
int paddleX = (width/2)-(paddleWidth/2);
int paddleY = (height)-(paddleHeight);
void setup() {
  size(width,height);
  minim = new Minim (this);   
  sound = minim.loadSample("boing.wav", 128);
  backgroundImage = loadImage("coolimage.jpg");
}

void draw() {
  image(backgroundImage, 0, 0, width, height);
   if(ballX+ballSize > width && moveX > 0) {
    moveX =- moveX;  
  }    
  if(ballX-ballSize < 0 && moveX < 0) {
    moveX =- moveX;
  }  
  if(ballY-ballSize < 0 && moveY < 0) {
    moveY =- moveY; 
  }
  if(ballY+ballSize > height && moveY > 0) {
    moveY =-moveY;
    sound.trigger();
  } 
  if(ballY < paddleY && ballY+ballSize > paddleY && moveY > 0
      && ballX > paddleX && ballX < paddleX + paddleWidth) {
    moveY =- moveY; 
  }  
  else if(ballY > paddleY + paddleHeight && ballY-ballSize < paddleY + paddleHeight && moveY < 0
      && ballX > paddleX && ballX < paddleX + paddleWidth) {
    moveY =- moveY; 
  } 
  ballX = ballX + moveX;
  ballY = ballY + moveY;
  ellipse(ballX,ballY,2*ballSize,2*ballSize);
  fill(255,0,0);
  stroke(0,255,0);
  paddleX = mouseX;
  rect(paddleX,paddleY,paddleWidth,paddleHeight);
} 
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

