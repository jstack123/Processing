int y = 50;
int x = 100;
int bucketX = 450;
int bucketY = 450;
int score;
void setup() {
size(500,500);
}  
void draw() {
background(100,100,100);
ellipse(x,y,25,25);
fill(0,0,255);
noStroke();
rect(mouseX,bucketY,45,45);
y++;
if(y>525) {
 int rain =  (int)random(500);
  y=50;
  x=rain;
}
  println("Your score is now: " + score);
}

