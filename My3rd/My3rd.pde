int x =0;
int y =240;
float R=0;

void setup(){
  size(640,480);
  colorMode(RGB,255);
  background(30,30,50);
  frameRate(10);
}

void draw(){
  fill(30,30,50);
  noStroke();
  rect(0,0,width,height);
  
for(int i=0; i<30; i++){
  int r=(int)random(50)+200;
  int g=(int)random(255);
  int b=(int)random(255);
  int c=(int)random(50)+130;
  
  int x=(int)random(width);
  int y=(int)random(height);
  int w=(int)random(100)+20;
  
  fill(r,g,b,c);
  rect(x,y,w,w);
  rotate(R);
R+=0.1;

stroke(255,200);
}
}
