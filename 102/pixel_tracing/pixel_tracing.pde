int counter = 0;

void setup() {
  size(200,200);
  background(0);
  frameRate(120);
}

void draw() {
  loadPixels();
  
  myBackground((int)random(255),(int)random(255),(int)random(255));
  
  updatePixels();
}

void myBackground(int r, int g, int b) {
  
  if (keyPressed) {
    r= 255;
    b= 255;
    g= 255;
  }
  
  pixels[counter] = color(r,g,b);
  counter++;
  
  //background(r,g,b);
}
