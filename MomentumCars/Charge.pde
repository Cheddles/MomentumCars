class Charge{  // explosive charge between carriages
  float impulse;  // the momentum given to each carriage when exploding
  int  diameter;  //physical diameter
  int xLoc;
  int yLoc;
  float velocity;  // velocity before explosion
  int timeToExplode;  // time (in ms) of explosion
  boolean winPend=false;
  
  Charge(int x, int y, int d, float v, float imp){
    xLoc=x;
    yLoc=y;
    diameter=d;
    velocity=v;
    impulse=imp;
    timeToExplode=millis()+maxTime;
  }
  
  void display(){
    strokeWeight(0);
    stroke(255);
    
    textSize(height/8);
 
    textAlign(CENTER, CENTER);
    if (motionStage<=1){
      switch (motionStage){
      case 0:  // loading
        fill(200);
      break;
      
      case 1:  // moving
        fill(255,min((millis()-detTime),255),min((millis()-detTime),255));
      break;
      
      case 2:  // completed
        
      break;
      }
      ellipse(centreLoc, trackHeight-cartWidth/4, chargeDiameter, chargeDiameter);
      fill(0);
      text("GO!!", width/2, height*0.85);
      if ((level==1)&&(motionStage==0)){
        if (timeToExplode<=millis()){
           motionStage=1;
           detTime=millis();
           cartLeft.velocity=-impulse/cartLeft.mass;
           cartRight.velocity=impulse/cartRight.mass;
        }
        else{
          fill(0);
          textSize(height/25);
          text(str(int((timeToExplode-millis())/1000)+1),centreLoc, trackHeight-cartWidth/3.5);
        }
      }
    }
    else if (motionStage==2) {
      fill(0);
      text("Reset", width/2, height*0.85);
    }
  }
  
   void clicked(int x, int y){
     float radius1=pow(pow(x-centreLoc,2)+pow(y-(trackHeight-cartWidth/4),2),0.5);
     if ((radius1<diameter/2)||((abs(x-width/2)<(width/3))&&(abs(y-height*0.85)<(height/6)))){
       if (motionStage==0){
         motionStage=1;
         detTime=millis();
         cartLeft.velocity=-impulse/cartLeft.mass;
         cartRight.velocity=impulse/cartRight.mass;
       }
       else if (motionStage==2){
         reset();
       }
     }
   }
}
