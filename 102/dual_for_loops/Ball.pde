class Ball {
  PVector pos;
  color ballColor;
  
  Ball(PVector pos, color ballColor) {
    
  }
  
  void update() {
    fill(ballColor);
    ellipse(pos.x, pos.y, 20, 20);    
  }
  
  void display() {
    fill(ballColor);
    ellipse(pos.x, pos.y, 20, 20);    
  }
}
