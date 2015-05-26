void setup() {
size(1000,500);
background(200); 
PImage face = loadImage("/Users/joeystack/Desktop/angry-face.jpg");
image(face, -100, -150);
}
void draw(){
fill(255);
ellipse(150,75,150,100);
ellipse(375,75,150,100);
int leftx=150+((mouseX-150)/5);
int lefty=75+((mouseY-75)/5);
int rightx=375+((mouseX-375)/5);
int righty=75+((mouseY-75)/5);
int maxX=25;
int maxY=25;
fill(0);
if(leftx-150>maxX) {
leftx=150+maxX;
}
if(150-leftx>maxX) {
leftx=150-maxX;
}
if(rightx-375>maxX) {
rightx=375+maxX;
}
if(375-rightx>maxX) {
rightx=375-maxX;
}
if(lefty-75>maxY) {
lefty=75+maxY;
}
if(75-lefty>maxY) {
lefty=75-maxY;
}
if(righty-75>maxY) {
righty=75+maxY;
}
if(75-righty>maxY) {
righty=75-maxY;
}
ellipse(leftx,lefty,40,40);
ellipse(rightx,righty,40,40);


}
