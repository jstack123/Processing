import ddf.minim.*;        
AudioSample sound;
int x = 190;
int y = 245;
int acceleration = 1;
void setup() {
  size(500,500);
  PImage catPic = loadImage("cat.jpg");
  catPic.resize(500,500);
  background(catPic);
  noStroke();
  Minim minim = new Minim(this);        
sound = minim.loadSample("PewPew.aif");
fill(255,0,0);
} 
void draw() {
  
   if(x<0 || x+125>500 || y<0 || y>500) {
    x = 190;
    y = 245;
    acceleration=1;
      PImage catPic = loadImage("cat.jpg");
  catPic.resize(500,500);
  background(catPic);
  int r = int(random(255));
  int g = int(random(255));
  int b = int(random(255));
  fill(r,g,b);
 }
 ellipse(x,y,50,50);
  ellipse(x+125,y,50,50);
} 
void keyPressed() {
  if(acceleration==5) {
    sound.trigger();
  }
  println(x + ", " + y);
  
  
  acceleration++;
  x-=2*acceleration;
  y-=2*acceleration;
  
}  
