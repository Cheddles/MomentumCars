color BGColour=color(255,255,255);  // the fill colour (RGB) of the background
color carColour=color(200,200,255);  // the fill colour (RGB) of the cars
int cartWidth = 80;  // display width of the carts (both the same)
int trackHeight = 400;  // y-location of the carts
int lastTime;  // last timestamp in ms
int thisTime;  // this timestamp in ms
int motionStage=0;  // 0=loading, 1=exploded, 2=completed
int centreLoc;  // location of the geometric centre of both carts before the explosion
int chargeDiameter=15;  //diameter of the charge between the two carts

Cart cartLeft;
Cart cartRight;
Charge charge;
Track track;

void setup(){

  size(800, 600);
  centreLoc=int(random(float(width)*0.2, float(width)*0.8));
  cartLeft= new Cart(centreLoc-(cartWidth+chargeDiameter)/2, trackHeight, 10, 5, 0);
  cartRight= new Cart(centreLoc+(cartWidth+chargeDiameter)/2, trackHeight, 10, 5, 0);
  charge = new Charge(centreLoc, trackHeight, chargeDiameter, 0.0, 100.0);
  track = new Track();
}

void draw(){
  
  if (cartLeft.dragging) cartLeft.drag(mouseY);
  if (cartRight.dragging) cartRight.drag(mouseY);
  
  background(BGColour);
  switch (motionStage){
    case 0:  // loading
      charge.display();
    break;
    
    case 1:  // moving
      charge.display();
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
  }
}

void mouseReleased() {
  cartLeft.dragging=false;
  cartRight.dragging=false;
}
