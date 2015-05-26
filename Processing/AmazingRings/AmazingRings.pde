void setup() {
size(1000,1000);
noFill();
stroke(200);
}
float move = 0;
void draw() {
  clear();
 
  move=move+5;
  int ringsize = 350;
for(int i = 0; i < 70; i++) {
ellipse(200+move,500,ringsize,ringsize);
ringsize -=5;
}
 int size = 350;
for(int x = 0; x < 70; x++) {
ellipse(800-move,500,size,size);
size -=5;
}
if(move>600) {
  move=0;
  stroke(int(random(255)));
}}

