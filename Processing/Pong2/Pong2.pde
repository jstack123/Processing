import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int height = 500;
int width = 500;
Ball ball;
//int paddleX = 
//int paddleY = 
int score = 0;
int lives = 3;
void setup() {
  size(width, height);
  minim = new Minim(this);
  sound = minim.loadSample("PongSound.wav");
  backgroundImage = loadImage("PongBackground.png");
  ball = new Ball();
}
void draw() {
  image(backgroundImage, 0, 0, 500, 500);
  text(score, 250, 250);
  //background(0,0,255 );
  ball.draw();
  ball.move();
  ball.score();
}  
class Ball {
  int x = 100;
  int y = 250;
  int ballSpeedX = 5;
  int ballSpeedY = 5;
  int ballRadius = 25;
  void draw() {
    fill(255, 0, 0);
    noStroke();
    ellipse(x, y, 2*ballRadius, 2*ballRadius);
  }
  void move() {
    x=x+ballSpeedX;
    y=y+ballSpeedY;
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
      lives--;
    }
  }
}
class Paddle {
  int paddleLength = 90;
  void draw() {
    rect(mouseX, 490, paddleLength, 10);
  }
  boolean intersects(int x, int y, int paddleX, int paddleY, int paddleLength) {
    if (y > paddleY - paddleLength && y < paddleY - 10 && x > paddleX && x < paddleX + paddleLength) {
      return true;
    } else {
      return false;
    }
  }
  // boolean paddleBounce = intersects(x, y, mouseX, 550, paddleLength);
 
  } 
  void score() {
     if (paddleBounce==true && ballSpeedY > 0) {
  score++;
  ballSpeedY=-ballSpeedY;
  }
    if (lives==0) {
      System.out.print("GAME OVER!!!");
    }
  }


