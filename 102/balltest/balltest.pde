Ball[] balls = new Ball[100];

void setup () {
  noStroke();
  size(720,720);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(width),random(height), (int)random(20));
  }
}

void draw () {
  background(255);
  
  
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].update();
  }
}
