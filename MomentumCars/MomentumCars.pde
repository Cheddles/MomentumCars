color BGColour=color(255,255,255);  // the fill colour (RGB) of the background
color carColour=color(200,200,255);  // the fill colour (RGB) of the cars
float distanceScale;  // pixels/metre
int cartWidth;  // display width of the carts (both the same)
int trackHeight = 400;  // y-location of the carts
int detTime;  // time charge set off in ms
int thisTime;  // this timestamp in ms
int motionStage=0;  // 0=loading, 1=exploded, 2=completed
int centreLoc;  // location of the geometric centre of both carts before the explosion
int chargeDiameter=30;  //diameter of the charge between the two carts
int level=1;
/*
Levels:
1 = beginner (intuitive play) static start no numbers and timed release. Maximum stripe width
2 = intermediate (ratios) static start, mass numbers only, player-triggered release
*/

Cart cartLeft;
Cart cartRight;
Charge charge;
Track track;

void setup(){

  size(800, 600);
  
  switch(level){
     case 1:
       cartWidth=width/8;
     break;
     
     case 2:
       cartWidth=width/10;
     break;
   }
   
  centreLoc=int(random(float(width)*0.2, float(width)*0.8));
  cartLeft= new Cart(centreLoc-(cartWidth+chargeDiameter)/2, trackHeight, 5, 0);
  cartRight= new Cart(centreLoc+(cartWidth+chargeDiameter)/2, trackHeight, 5, 0);
  charge = new Charge(centreLoc, trackHeight, chargeDiameter, 0.0, 10.0);
  track = new Track();
  detTime=0;
}

void draw(){
  distanceScale=(width/10.0);  // one metre per tick mark on the track
  if (cartLeft.dragging) cartLeft.drag(mouseY);
  if (cartRight.dragging) cartRight.drag(mouseY);
  
  background(BGColour);
  switch (motionStage){
    case 0:  // loading
      charge.display();
    break;
    
    case 1:  // moving
      charge.display();
//      cartLeft.move();
//      cartRight.move();
    break;
    
    case 2:  // completed
      
    break;
  }
  
  cartLeft.display();
  cartRight.display();
  track.display();
  
}

void mousePressed() {
  if (motionStage==0){
    cartLeft.clicked(mouseX,mouseY);
    cartRight.clicked(mouseX,mouseY);
    charge.clicked(mouseX, mouseY);
  }
}

void mouseReleased() {
  cartLeft.dragging=false;
  cartRight.dragging=false;
}
