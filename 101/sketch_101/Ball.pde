class Ball {
  PVector pos; 
  PVector vel;
  int radius;
  color ballColor;
  
  // Constructor
  Ball(float x, float y, int radius) {
    pos = new PVector(x, y);
    vel = new PVector(random(3),random(3));
    this.radius = radius;
    genRandomColor();
  }
  
  void genRandomColor() {
    ballColor = color((int) random(3),(int) random(255),(int) random(255));
  }
  
  void update() {
    pos.add(vel);
    
    if (pos.x > width-radius || pos.x <= 0+radius) {
      vel.x = vel.x * -1;
      ballColor = color(255);
    }
   
    if (pos.y > height-radius || pos.y <= 0+radius) {
      vel.y = vel.y * -1;
      ballColor = color(255);
    }
    
    if ((int)pos.x+radius == mouseX || (int)pos.y+radius == mouseY ) {
      genRandomColor();
      //println("ball x: "+pos.x+" ball y: "+pos.y);
      //println("mouse x: "+mouseX+" mouse y: "+mouseY);
    }
    
  }
  
  void display() {
    noStroke();
    fill(ballColor);
    ellipse(pos.x,pos.y,radius*2, radius*2);
  }
}
