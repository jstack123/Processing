import ddf.minim.*;  
AudioSample sound;
void setup() {
  Minim minim = new Minim(this);
  sound = minim.loadSample("45654__simon-lacelle__dun-dun-dun.wav");  
  size(1000, 1000);
  fill(255, 229, 205);
  ellipse(500, 500, 1000, 1000);
  fill(255, 0, 0);
  ellipse(500, 500, 900, 900);
  fill(255, 230, 205);
  ellipse(500, 500, 850, 850);
}
void draw() {
  if (mousePressed) {
    PImage eyeball = loadImage("eyeball.ppm.gif");
    eyeball.resize(100, 100);
    image(eyeball, mouseX, mouseY);
    if (mousePressed&&(mouseButton == RIGHT)) {
      PImage goblin = loadImage("goblin.ppm.gif");
      goblin.resize(100, 100);

      image(goblin, mouseX, mouseY);
    }
    sound.trigger();
  }
}

