class Cactus {
  float x1; //tracks x coord of first cactus
  float a1; //tracks acceleration of x1
  float s1; //tracks speed of x1
  float y1; //tracks y coord of first cactus

  Cactus (float xa, float ya, float aa, float sa) {
    x1 = xa;
    a1 = aa;
    s1 = sa;
    y1 = ya;
  }
  void update(float gravity) {
    //make cactus move
    ellipse(x1, 175, 50, 50); // Cactus One
    s1 = s1 + a1;
    x1 = x1 + s1;
    if (x1 < -26) {
      x1 = 900;                       //  <--
      s1 = -3;
    }
  }
}