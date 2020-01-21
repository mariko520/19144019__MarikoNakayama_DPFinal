class Circle {
 
  float x, y, eSize, velocity;
 
  Circle (float _y, int _eSize, float _velocity) {
 
    x = 0.0;   
    y = _y;     
    eSize = _eSize;
   
    velocity = _velocity;
  }
 
  void update() {
 
    x += velocity;   
    if (x > width) {   
      x = 0;   
    }
  }
 
  void display() {
    ellipse(x, y, eSize, eSize);   
  }
 
  void setVelocity(float _velocity) {
 
    velocity += _velocity;
   
    if (velocity < 0.0) velocity = 0.0;
  }
}
