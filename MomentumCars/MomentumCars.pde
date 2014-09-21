color BGColour=color(128,128,128);  // the fill colour (RGB) for shape sections that are "selected" by the fraction
color carColour=color(255,255,200);  // the fill colour (greyscale) for shape sections that are not "selected" by the fraction. White (255) is
int lastTime;  // last timestamp in ms
int thisTime;  // this timestamp in ms
int motionStage=0;  // 0=loading, 1=exploded, 2=completed

Cart cartLeft;


void setup(){

  size(800, 600);
  background(BGColour);
  stroke(255);
  cartLeft= new Cart(200, 400, 80, 10, 5, 0);

}

void draw(){
  cartLeft.display();
}
