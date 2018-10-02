Player player;
Bullet bullet;
//Bullet[] bullets = new Bullet[10];

void setup() {
  frameRate(30);
  size(500,500);
  noStroke();
  player = new Player();
}

void draw() {
  background(0);
  player.display();
  
  
  //check to see if bullet has been defined
  if (bullet != null) {
    bullet.update();
    bullet.display();
  }
  
  
  //for(int i=0; i < bullets.length; i++) {
  //  if (bullets[i] != null) {
  //    bullets[i].update();
  //    bullets[i].display();
  //  }
  //}
}

void keyPressed() {
  if (keyPressed) {
    if (key == 'a' || keyCode == LEFT) {
      //move chracter to left
      player.moveCharLeft(); 
    } else if (key == 'd' || keyCode == RIGHT) {
      //move chracter to right
      player.moveCharRight(); 
    }
    if (key == ' ') {
      bullet = new Bullet(player.pos,height-55);
    }
  }
}
