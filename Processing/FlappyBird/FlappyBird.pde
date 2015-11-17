int pipe = 5;
int x = 250;
int y = 250;
int width = 50;
int height = 50;
int birdYVelocity = 1;
int birdXVelocity = 1;
float gravity = 0.1;
int pipeX = 1;
int pipeY = 300;
void setup() {
size(500,500);
}
void draw() {
background(000,255,255);
fill(255,0,0);
ellipse(x,y,width,height);
y=y+(int) birdYVelocity;
y=y+(int) gravity;
fill(0,221,119);
rect(pipeX,pipeY,50,200);
pipeX = pipeX+birdXVelocity;
if(pipeX>400) {
pipeX = pipeX;
}  
}
void mousePressed() {
birdYVelocity = -3;
}

