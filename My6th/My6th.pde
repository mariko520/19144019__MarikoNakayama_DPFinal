PImage img;
int mosaicSize = 12;

void setup(){
  size(640,420);
  noStroke();
  img = loadImage("osaka.jpg");
  image(img,0,0);
  img.resize(width,height);
  loadPixels();
}

void draw(){
  background(0);
  for(int j =0;j<height; j+=mosaicSize){
    for(int i =0; i< width; i+=mosaicSize){
      color c = pixels[j*width+i];
      fill(c,127);
      ellipse(i,j,brightness(c)/6.0,brightness(c)/6.0);
    }
  }
}
      
