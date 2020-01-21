class ColorCircle extends Circle {
  color eColor;    
 
  ColorCircle (float _y, int _eSize, float _velocity, color _eColor) {
 
    super(_y, _eSize, _velocity);
    eColor = _eColor;
  }
 
  void update() {
 
    super.update(); 
  }

  void displayColor() {
 
    fill(eColor);   
    super.display();  
  }

  void faster() {
 
    super.setVelocity(0.5);
  }
 
  void slower() {
 
    super.setVelocity(-0.5);
  }
}
