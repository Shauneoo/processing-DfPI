class Ball {
  float x, y;
  PVector pos, vel;
  color ballColor;
  int radius;
  int diamiter;
  
  Ball(float x, float y, int radius) {
    pos = new PVector(x,y);
    vel = new PVector(random(5),random(5));
    ballColor = color(random(255), random(255), random(255));
    diamiter = radius*2;
  }
  
  void update() {
    pos.add(vel);
    
    if (pos.x > width-diamiter || pos.x <= 0+diamiter) {
      vel.x = vel.x * -1;
    }
    
    if (pos.y > height-diamiter || pos.y <= 0+diamiter) {
      vel.y = vel.y * -1;
    }
    
  }
  
  void display() {
    fill(ballColor);
    ellipse(pos.x, pos.y, 20, 20);    
  }
}
