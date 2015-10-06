//global variables
int x; //tracks x coord of first cactus
//Runs once
void setup() {
  size(800, 200);
  frameRate(60);
  //set initial position of cactus
  x = 900;
}
//Runs repeatedly
void draw() {
  background(255);
  //       x    y   w    h
  ellipse(x, 175, 50, 50);

  //create the appearance of moving by changing the x position
  x = x-4;

  //put the cactus back to x=900 if it goes past x=(-50)
  if (x < -26) {
    x = 900; //place off screen on right
  }
}