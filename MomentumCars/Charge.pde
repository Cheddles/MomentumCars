class Charge{  // explosive charge between carriages
  float impulse;  // the momentum given to each carriage when exploding
  int  diameter;  //physical diameter
  int xLoc;
  int yLoc;
  float velocity;  // velocity before explosion
  
  Charge(int x, int y, int d, float v, float imp){
    xLoc=x;
    yLoc=y;
    diameter=d;
    velocity=v;
    impulse=imp;
  }
  
  void display(){
    strokeWeight(0);
    fill(127);
    ellipse(centreLoc, trackHeight, chargeDiameter, chargeDiameter);
  }
}
