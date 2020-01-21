size(640,480);
colorMode(HSB);
noStroke();
background(0);

for(int i=0; i<200; i++){
  int x =(int)random(640);
  int y =(int)random(480);
  int w =(int)random(26);
  
  fill(x,y,255);
  rect(x,y,w,w-10);
}
