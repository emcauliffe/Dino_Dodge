class Cactus2 {
  float x2; //tracks x coord of first cactus
  float a2; //tracks acceleration of x1
  float s2; //tracks speed of x1
  float y2; //tracks y coord of first cactus
  
  Cactus2 (float xb, float yb, float ab, float sb) {
    x2 = xb;
    a2 = ab;
    s2 = sb;
    y2 = yb;
  }
  void update(float gravity) {
    //make cactus move
    ellipse(x2, 175, 50, 50); // Cactus One
    s2 = s2 + a2;
    x2 = x2 + s2;
    if (x2 < -26) {
      x2 = 1050;                       //  <--
      s2 = -3;
    }
  }
}