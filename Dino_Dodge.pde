//global variables
Cactus1 c1; //makes a plave in memory to keep cactus object
Cactus2 c2;
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
int highscore; //highscore

//Runs once
void setup() {
  size(800, 200);
  frameRate(60);
  c1 = new Cactus1(900, 175, -0.3, -3);
  c2 = new Cactus2(1050, 175, -0.3, -3);
  //set initial position of cactus
  //x3 = 1200;  //cactus three
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
  c1.update(gravity);
  c2.update(gravity);
  //status updates
  //textSize(12);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);
  text("distancex1 is " + distancex1, 150, 100);
  text("distancex2 is " + distancex2, 350, 100);
  text("score:" + score, 725, 15);
  

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
      dinoA=-1.1;
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