import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int x = 100;
int y = 250;
int ballSpeedX = 5;
int ballSpeedY = 5;
//int paddleX = 
//int paddleY = 
void setup() {
  size(500,500);
  minim = new Minim(this);
  sound = minim.loadSample("PongSound.wav");
  backgroundImage = loadImage("PongBackground.png");
}
void draw() {
  image(backgroundImage,0,0, 500,500);
  //background(0,0,255 );
  x=x+ballSpeedX;
  y=y+ballSpeedY;
  ellipse(x,y,50,50);
  fill(255,0,0);
  noStroke();
  rect(mouseX,490,90,10);
  if(x>499) {
    ballSpeedX=-ballSpeedX;
  }
  if(y>499) {
    ballSpeedY=-ballSpeedY;
  }  
   if(x<1) {
    ballSpeedX=-ballSpeedX;
  }
   if(y<1) {
    ballSpeedY=-ballSpeedY;
  }  
  if(y>499) {
    sound.trigger();
  }    
}  
