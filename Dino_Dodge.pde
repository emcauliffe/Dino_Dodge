//global variables
Cactus c1; //makes a plave in memory to keep cactus 1object
Cactus c2; // "                " cactus 2 object
Dino d1; // "                " dino object
float gravity; //gravity
float distancex1; //track distance between dino and cactus x1
float distancex2; //track distance between dino and cactus two
int score;  //track score
int highscore; //highscore


//Runs once
void setup() {
  size(800, 200);
  frameRate(60);
  c1 = new Cactus(900, 175, -0.3, -3, 25, 900);
  c2 = new Cactus(1050, 175, -0.3, -3, 22.5, 1050);
  d1 = new Dino(170, 0, 0);
  gravity = 0.0675; //gravity
  score = 0;
}
//Runs repeatedly
void draw() {
  background(255);
  fill (0);
  c1.update(gravity);
  c2.update(gravity);
  d1.update(gravity);
  if (d1.isTouching(c1)) {
    textSize(80);
    text("Hit", 400, 100);
    noLoop();
  }
  if (d1.isTouching(c2)) {
    textSize(80);
    text("Hit", 400, 100);
    noLoop();
  }
  score = score + 1;
  textSize(12);
  text("Score" + (score), 700, 35);
}
void keyPressed() {
  if (key == ' ') {
    if (d1.getY() == 170) {
      d1.setA(-1.1);
    }
  }
  //}
  //if (gameover > 0) {
  //  if (key == 'r' || key =='R') {
  //    gameover = 0;
  //    //set initial position of cactus
  //    x1 = 900; //cactus one
  //    x2 = 1050;  //cactus two
  //    //x3 = 1200;  //cactus three
  //    a1 = -0.4;  //accel. of cactus one
  //    s1 = -3;  //initial speed of cactus one
  //    a2 = -0.4; //accel. of cactus two
  //    s2 = -3; //initial accel of cactus two
  //    //a3 = 0.6; //accel. of cactus three
  //    //s3 = -3; //initial speed of cactus three
  //    dinoY = 170; //initial vertical position of dino
  //    dinoS = 0; //initial dino speed
  //    dinoA = 0; //accel. of dino
  //    gravity = 0.0675; //gravity
  //    if (score > highscore) {
  //      highscore = score;
  //    }
  //    score = 0;
  //}
  //}
}