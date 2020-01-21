ColorCircle[] c = new ColorCircle[100];
 
void setup() {
 
  size(640, 480);
  smooth();    
  noStroke();
  fill(0);    
 
  for (int i = 0; i < c.length; i ++) {
 
    c[i] = new ColorCircle(i * 4, 
                           7,
                           random(0.01, 7.0), 
                           color((int)random(255), (int)random(255), 255));    
  }
}
 
void draw() {
 
  background(255);  
 
  for (int i = 0; i < c.length; i ++) {
    c[i].update(); 
    c[i].displayColor();
  }
}
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {  
 
      for (int i = 0; i < c.length; i ++) c[i].faster();
    } else if (keyCode == DOWN) {   
 
      for (int i = 0; i < c.length; i ++) c[i].slower();
    }
  }
}
