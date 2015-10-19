//global variables
Cactus c1; //makes a plave in memory to keep cactus object
// start cactus variables
//float x2; //tracks x coord of second cactus
//float a2; //tracks acceleration of x2
//float s2; //tracks speed of x2
//float x3; //tracks x coord of third cactus
//float a3; //tracks acceleration of x3
//float s3; //tracks speed of x3
//end cactus variables

//start dino variables
float dinoY; //tracks y coord of dino
float dinoS; //tracks speed of dino
float dinoA; //tracks acceleration of the dino
//end dino variables


float gravity; //gravity
float distancex1; //track distance between dino and cactus x1
float distancex2; //track distance between dino and cactus two
int score;  //track score
int gameover; //is game over
int highscore; //highscore

//Runs once
void setup() {
  size(800, 200);
  frameRate(60);
  c1 = new Cactus(900, 175, -1, -2);
  gameover = 0;
  //set initial position of cactus
  //x1 = 900; //cactus one
  //x2 = 1050;  //cactus two
  //x3 = 1200;  //cactus three
  //a1 = -0.4;  //accel. of cactus one
  //s1 = -3;  //initial speed of cactus one
  //a2 = -0.4; //accel. of cactus two
  //s2 = -3; //initial accel of cactus two
  //a3 = 0.6; //accel. of cactus three
  //s3 = -3; //initial speed of cactus three
  dinoY = 170; //initial vertical position of dino
  dinoS = 0; //initial dino speed
  dinoA = 0; //accel. of dino
  gravity = 0.0675; //gravity
  score = 0;
  highscore = 0;
}
//Runs repeatedly
void draw() {
  background(255);
  fill (0);
  //if (gameover > 0) {
  //  if (score > highscore) {
  //    highscore = score;
  //  }
  //  textSize(75);
  //  fill(0);
  //  text("GAME OVER", 175, 100);
  //  textSize(15);
  //  text("Press R to restart", 261, 133);
  //  text("Highscore: " + highscore, 418, 133);
  //  text("Score: " + score, 378, 163);
  //}
  //if (gameover < 1) {
  //status updates
  //textSize(12);
  //text("dinoY is " + dinoY, 150, 25);
  //text("dinoS is " + dinoS, 150, 50);
  //text("dinoA is " + dinoA, 150, 75);
  //text("distancex1 is " + distancex1, 150, 100);
  //text("distancex2 is " + distancex2, 350, 100);
  //text("score:" + score, 725, 15);
  c1.update(gravity);
  c1.update(x_);
  c1.update(a_);
  c1.update(y_);
  c1.update(s_);

  ////determine whether there is a hit on cactus one
  //float ax1 = dinoY - 175; //leg a
  //float bx1 = x1 - 50;  //leg b
  //distancex1 = sqrt(pow(ax1, 2)+pow(bx1, 2));

  ////determine whether there is a hit on cactus two
  //float ax2 = dinoY - 175; //leg a
  //float bx2 = x2 - 50;  //leg b
  //distancex2 = sqrt(pow(ax2, 2)+pow(bx2, 2));

  //move the dino
  dinoA = dinoA + gravity;
  dinoS = dinoS + dinoA;
  dinoY = dinoY + dinoS;

  if (dinoY > 170) {
    dinoS = 0;
    dinoA = 0;
    dinoY = 170;
  }

  ellipse(50, dinoY, 60, 60);  //draw dino
  //create the appearance of moving by changing the x position
  //x2 = x2 + s2;
  //s2 = s2 + a2;
  //x3 = x3 + s3;
  //s3 = s3 + a3;


  //       x    y   w    h

  //ellipse(x2, 175, 50, 50); // Cactus Two

  //ellipse(x3, 175, 50, 50); // Cactus Three



  //if (distancex1 < (30 + 25)) {
  //  noStroke();
  //  fill(255);
  //  rect(0, 0, 800, 200);
  //  gameover = 1;
  //}

  //if (distancex2 < (30 + 25)) {
  //  noStroke();
  //  fill(255);
  //  rect(0, 0, 800, 200);
  //  gameover = 1;
  //}
  //
  //if (x2 < -26) {                   //
  //  x2 = 910;                       //  <--
  //  s2 = -3;
  //}                                 //

  //    if (x2 < 1) {
  //      score = score + 1;
  //    }

  //if (score < 0) {
  //  noStroke();
  //  fill(255);
  //  rect(0, 0, 800, 200);
  //  gameover = 1;
  //}
  //if (x3 < -26) {                   //
  //  x3 = 920;                       //  
  //  s3 = -3;
  //}
}
void keyPressed() {
  if (key == ' ') {
    if (dinoY > 169) {
      dinoA=-1;
    }
  }
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
}
//}