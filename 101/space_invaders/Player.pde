class Player {
  int pos;
  int radius;
  int playerHitBox;

  // Constructor
  Player() {
    pos = width/2;
    playerHitBox = 55;
    
  }
  
  void fire() {
    
  }

  void moveCharRight() {
    if (pos > width-(playerHitBox/2)) {
      println("hit edge");
    } else {
      pos+= 5;
    }
  }
  
  void moveCharLeft() {
    if (pos < 0+(playerHitBox/2)) {
      println("hit edge");
    } else {
      pos-= 5;
    }
  }

  void display() {
    rectMode(CENTER);
    // x , y, size w, size h
    rect(pos, height-55, playerHitBox, playerHitBox);
  }
}
