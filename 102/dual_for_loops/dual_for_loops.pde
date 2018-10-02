Circle[] circles = new Circle[100];

int diamiter = 10;
int numberOfCircles = 20;
PVector angle = new PVector(width/10, height/10);

void setup () {
  noStroke();
  size(720,720);
  
  for (int i = 0; i<10; i++) {
    //for () {
      
    //}
  }
  
  circleMothership(0+(diamiter*numberOfCircles),0+(diamiter*numberOfCircles));
  circleMothership(0+(diamiter*numberOfCircles),width-(diamiter*numberOfCircles));
  circleMothership(height-(diamiter*numberOfCircles),0+(diamiter*numberOfCircles));
  circleMothership(height-(diamiter*numberOfCircles),width-(diamiter*numberOfCircles));
}

void draw () {
  
}

void circleMothership(int x, int y) {
  
  for(int i = numberOfCircles; i > 0; i--) {
    //modulo operation 3%2= 1 use it to get a binary value;
    int mi = i % 3;
    switch(mi) {
      case 1: 
        fill(0,255,0);
        break;
      case 2: 
        fill(255,0,0);
        break;
      default:            
        fill(0,0,255);
        break;
    }
    
    ellipse(x, y, i*diamiter, i*diamiter);
  }
}
