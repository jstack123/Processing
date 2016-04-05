import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int height = 500;
int width = 500;
Ball ball;
Paddle paddle;
//int paddleX = 
//int paddleY = 
int score = 0;
int lives = 3;
int level = 1;

void setup() {
  size(width, height);
  minim = new Minim(this);
  sound = minim.loadSample("PongSound.wav");
  backgroundImage = loadImage("PongBackground.png");
  ball = new Ball();
  paddle = new Paddle();
}
void draw() {
  image(backgroundImage, 0, 0, 500, 500);
  text(score, 250, 250);
  //background(0,0,255 );
  ball.draw();
  ball.move(paddle);
  ball.score();
  paddle.draw();
}  
class Ball {
  int x = 100;
  int y = 250;
  int ballSpeedX = 10;
  int ballSpeedY = 10;
  int ballRadius = 25;
  void draw() {
    fill(255, 0, 0);
    noStroke();
    ellipse(x, y, 2*ballRadius, 2*ballRadius);
  }
  void score() {
    if (lives==0) {
      System.out.print("GAME OVER!!!");
    }
  }

  void move(Paddle p) {
    x=x+ballSpeedX;
    y=y+ballSpeedY;
    //print("\n" + mouseX + " " + x + " " + (mouseX+p.paddleLength) + " " + (x+ballRadius) + " " + p.paddleY);
    
    if (ballSpeedY > 0 && mouseX<x && x<mouseX+p.paddleLength && y+ballRadius>p.paddleY) {
      score++;
      ballSpeedY=-ballSpeedY;
    } else {
      if (y+ballRadius>height) {
        ballSpeedY=-ballSpeedY;
      }
      if (y-ballRadius<0) {
        ballSpeedY=-ballSpeedY;
      }
      if (y+ballRadius>height) {
        sound.trigger();
        lives--;
      }
    }
    if (x+ballRadius>width) {
      ballSpeedX=-ballSpeedX;
    }

    if (x-ballRadius<0) {
      ballSpeedX=-ballSpeedX;
    }
    if(score > 10*level) {
      level++;
      print("LEVEL UP!! " + level);
      speedup();
    }
  }
  void speedup() {
    int change = 2;
    if(ballSpeedX>0) {
     ballSpeedX+=change; 
    } else {
     ballSpeedX-=change;
    }    
    if(ballSpeedY>0) {
     ballSpeedY+=change; 
    } else {
     ballSpeedY-=change;
    }    
  }
}
class Paddle {
  int paddleY = 400;
  int paddleLength = 90;
  int paddleHeight = 10;
  void draw() {
    rect(mouseX, paddleY, paddleLength, paddleHeight);
  }
  boolean intersects(int x, int y, int paddleX, int paddleY, int paddleLength) {
    if (y > paddleY - paddleLength && y < paddleY - 10 && x > paddleX && x < paddleX + paddleLength) {
      return true;
    } else {
      return false;
    }
  }
}

