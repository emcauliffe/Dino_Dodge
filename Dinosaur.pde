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
    dinoA = dinoA + gravity; //change accel based on gravity
    dinoS = dinoS + dinoA; //change speed based on accel
    dinoY = dinoY + dinoS; //change y coord based on speed
    if (dinoY > 170) {
      dinoS = 0;
      dinoA = 0;
      dinoY = 170;
    }
    //status updates
    textSize(12);
    text("dinoY is " + dinoY, 150, 25);
    text("dinoS is " + dinoS, 150, 50);
    text("dinoA is " + dinoA, 150, 75);
    //text("distancex1 is " + distancex1, 150, 100);
    //text("distancex2 is " + distancex2, 350, 100);
    //text("score:" + score, 725, 15);
  }

  // getY
  //
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return dinoY;
  }
  // setA
  //
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  //          from outside the class
  void setA(float newA_) {
    dinoA = newA_;
  }
}