void setup() {
  size(500,500);
  background(255);
  noStroke();
  fill(102);
  PImage scaryface = loadImage("scary-face.jpg");
  scaryface.resize(500,500);
  image(scaryface,0,0);
  
}
void draw()   {
  fill(mouseX,3,3);
  ellipse(eyeleft,eyeheight,180,140);
  ellipse(eyeleft+distanceRight,eyeheight,180,140);
  fill(mouseY,0,0);
  int leftright = 0;
  int updown = 0;
  if(mouseX>eyeleft) {
  leftright=25;
}
  else {
    leftright=-25;
}
  if(mouseY>eyeheight) {
    updown=+25;
  }
  else {
    updown=-25;
  }
  ellipse(eyeleft+leftright,eyeheight+updown,50,50);
  ellipse(eyeleft+distanceRight+leftright,eyeheight+updown,50,50);
}
int eyeleft = 120;
int eyeheight = 90;
int distanceRight = 390-120;
