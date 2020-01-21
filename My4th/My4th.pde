int x =320;
int y =240;
float r =0;
float g =0;
float b =0;

void setup(){
  size(640,480);
  colorMode(RGB,255);
  background(0,0,0);
  frameRate(10);
}

void draw(){
  fill(0,0,0,50);
  noStroke();
  rect(0,0,width,height);
  
  fill(r,g,b);
  drawStar(x,y,150,10);
}

void drawStar(int x, int y, int r, int prickleNum) {
  int vertexNum = prickleNum*2;  
  int R;  
  int outR = r;  
  int inR = outR/2; 

  pushMatrix();
  translate(x, y);
  rotate(radians(-90));
  beginShape();
  for (int i = 0; i < vertexNum; i++) {
    if (i%2 == 0) {
      R = outR;
    } else {
      R = inR;
    }
    vertex(R*cos(radians(360*i/vertexNum)), R*sin(radians(360*i/vertexNum)));
  }
  endShape(CLOSE);
  popMatrix();
}

void mousePressed(){
  x=mouseX;
  y=mouseY;
  r=(float)random(30)+220;
  g=(float)random(255);
  b=(float)random(255);
  
  stroke(250,250,250);
  strokeWeight(20);
  fill(r,g,b);
  drawStar(mouseX,mouseY,120,10);
}
