color BGColour=color(255,255,255);  // the fill colour (RGB) for shape sections that are "selected" by the fraction
color carColour=color(200,200,255);  // the fill colour (greyscale) for shape sections that are not "selected" by the fraction. White (255) is
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

void setup(){

  size(800, 600);
  centreLoc=int(random(float(width)*0.2, float(width)*0.8));
  cartLeft= new Cart(centreLoc-(cartWidth+chargeDiameter)/2, trackHeight, 10, 5, 0);
  cartRight= new Cart(centreLoc+(cartWidth+chargeDiameter)/2, trackHeight, 10, 5, 0);
  charge = new Charge(centreLoc, trackHeight, chargeDiameter, 0.0, 100.0);
}

void draw(){
  background(BGColour);
  cartLeft.display();
  cartRight.display();
  charge.display();
}
