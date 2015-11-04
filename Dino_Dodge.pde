//global variables
Cactus c1; //makes a plave in memory to keep cactus 1object
Cactus c2; // "                " cactus 2 object
Dino d1; // "                " dino object
float gravity; //gravity
float distancex1; //track distance between dino and cactus x1
float distancex2; //track distance between dino and cactus two
int score;  //track score
int highscore; //highscore
boolean gameover; // gameover boolean
//Runs once
void setup() {
  size(800, 200);
  frameRate(60);
  c1 = new Cactus(900, 175, -0.3, -3, 25, 900);
  c2 = new Cactus(1050, 175, -0.3, -3, 22.5, 1050);
  d1 = new Dino(170, 0, 0);
  gravity = 0.0700 ; //gravity
  gameover = false;
  score = 0;
}
//Runs repeatedly
void draw() {
  if (gameover == true) {
    if (score > highscore) {
      highscore = score;
    }
    noStroke();
    fill(255);
    rect(0, 0, 800, 200);
    textSize(75);
    fill(0);
    text("GAME OVER", 175, 100);
    textSize(15);
    text("Press R to restart", 261, 133);
    text("Highscore: " + highscore, 418, 133);
    text("Score: " + score, 378, 163);
  }
  if (gameover == false) {
    background(255);
    fill (0);
    text("Score: " + score, 725, 15);
    c1.update(gravity);
    c2.update(gravity);
    d1.update(gravity);
    if (d1.isTouching(c1)) {
      textSize(80);
      text("Hit", 400, 100);
      gameover = true;
    }
    if (d1.isTouching(c2)) {
      textSize(80);
      text("Hit", 400, 100);
      gameover = true;
    }
    if (c1.getX()  < 0) {
      score = score +1;
    }
    if (c2.getX() < 0) {
      score = score +1;
    }
  }
}
void keyPressed() {
  if (key == ' ') {
    if (d1.getY() == 170) {
      d1.setA(-1.2);
    }
  }
  if (gameover == true) {
    if (key == 'r' || key =='R') {
      gameover = false;
      c1 = new Cactus(900, 175, -0.3, -3, 25, 900);
      c2 = new Cactus(1050, 175, -0.3, -3, 22.5, 1050);
      d1 = new Dino(170, 0, 0);
    }
    score = 0;
  }
}