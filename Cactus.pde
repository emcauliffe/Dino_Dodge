class Cactus {
  float x1; //tracks x coord of first cactus
  float a1; //tracks acceleration of x1
  float s1; //tracks speed of x1
  float y1; //tracks y coord of first cactus
  float r1; //radius of circle
  float resetPosition;  // Where the cactus should reset to

  Cactus (float x_, float y_, float a_, float s_, float r_, float rp_) {
    x1 = x_;
    a1 = a_;
    s1 = s_;
    y1 = y_;
    r1 = r_;
    resetPosition = rp_;
  }

  void update(float gravity) {
    //make cactus move
    ellipse(x1, y1, r1*2, r1*2); // Cactus One
    s1 = s1 + a1; //change speed
    x1 = x1 + s1; //change x coord
    if (x1 < -26) {
      x1 = resetPosition;                       //  <-- reset to the right side
      s1 = -3;
    }
  }

  //get x
  //purpose: return the x position of the cactus
  float getX() {
    return x1;
  }
  float getY() {
    return y1;
  }
  float getR() {
    return (r1);
  }
}