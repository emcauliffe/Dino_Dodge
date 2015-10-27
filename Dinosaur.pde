class Dino {
  float dinoY; //tracks y coord of dino
  float dinoS; //tracks speed of dino
  float dinoA; //tracks acceleration of the dino

  Dino (float y_, float s_, float a_) {
    dinoY = y_;
    dinoS = s_;
    dinoA = a_;
  }

  void update(float gravity) {
    //make dino move
    ellipse(50, dinoY, 60, 60); //draw dino
    dinoA = dinoA + gravity; 
    dinoS = dinoS + dinoA;
    dinoY = dinoY + dinoS;
    if (dinoY > 170) {
      dinoS = 0;
      dinoA = 0;
      dinoY = 170;
    }
  }
}