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
    
    switch (motionStage){
      case 0:  // loading
        fill(127);
      break;
      
      case 1:  // moving
        fill(max(255-(thisTime-lastTime),0),0,0);
      break;
      
      case 2:  // completed
      
      break;
    }

    ellipse(centreLoc, trackHeight-cartWidth/4, chargeDiameter, chargeDiameter);
  }
}
