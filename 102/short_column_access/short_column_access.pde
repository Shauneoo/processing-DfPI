int[] columns = new int[4];
int col = 0;

void setup() {
  size(400,400);
  
  for (int i=0; i < columns.length; i++) {
    columns[i] = 0;
  }
  stroke(255,0,120);
}

void draw() {
  int xWidth = width /columns.length;
  
  for (int i=0; i < columns.length; i++) {
    fill(columns[i]);
    rect(i*xWidth, 0, xWidth, height);
  }
  
  if (keyPressed) {
    
    //col++;
    //for (int i=0; i < columns.length; i++) {
    //  //println(i*xWidth);
    //  if (mouseX < (i+1)* xWidth && mouseX > xWidth *i) {
    //    columns[i]++;
    //  }
    //} 
    
    //this is the same as the above.
    columns[mouseX/ xWidth]++;
    
    //println(mouseX/ xWidth);
  }
  
}
