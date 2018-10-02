
Ball[] balls = new Ball[10];

void setup() {
  size(640, 360);
  
  for(int i=0; i <balls.length; i++) {
    balls[i] = new Ball(random(width), random(height), 10);
  }
}

void draw() {
  background(0);
  
  for(int i=0; i <balls.length; i++) {
    balls[i].update();
    balls[i].display();
  }
}
