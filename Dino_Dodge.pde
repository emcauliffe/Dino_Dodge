//global variables
int x1; //tracks x coord of first cactus
int x2; //tracks x coord of second cactus
int x3; //tracks x coord of third cactus
//Runs once
void setup() {
  size(800, 200);
  frameRate(60);
  //set initial position of cactus
  x1 = 900;
  x2 = 1050;
  x3 = 1200;
}
//Runs repeatedly
void draw() {
  background(255);
  //       x    y   w    h
  ellipse(x1, 175, 50, 50); // Cactus One

  ellipse(x2, 175, 50, 50); // Cactus Two

  ellipse(x3, 175, 50, 50); // Cactus Three

  //create the appearance of moving by changing the x position
  x1 = x1-5;
  x2 = x2-5;
  x3 = x3-5;

  //put the cactus back to x=900 if it goes past x=(-50)
  if (x1 < -26) {
    x1 = 900;                       //  <--
  }                                 //
  if (x2 < -26) {                   //
    x2 = 910;                       //  <--
  }                                 //
  if (x3 < -26) {                   //
    x3 = 920;                       //  
  }
}