class Bullet {
  PVector pos;
  PVector vel;
  
  //constructor
  Bullet(float x, float y) {
    pos = new PVector(x,y);
  }
  
  void update() {
    pos.y-=5;
  }
  
  void fire() {
  }
  
  void display() {
    ellipse(pos.x, pos.y, 20, 20);
  }
  
  //hit alien
  
  //exit screen bounds
  
}
