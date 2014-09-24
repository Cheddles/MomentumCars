color BGColour=color(128,128,128);  // the fill colour (RGB) for shape sections that are "selected" by the fraction
color CarColour=color(255,128,255);  // the fill colour (greyscale) for shape sections that are not "selected" by the fraction. White (255) is

void setup(){

  size(800, 600);
  background(BGColour);
  stroke(255);
}

void draw(){
  background(BGColour);
  rect(width*0.4, height*0.4, width*0.2, height*0.2);
}
class Cart{
 int cartHeight;
 int cartWidth;
 int xLoc;
 int yLoc;
 int stripeWidth;
 int wheelDiameter;
 float mass;
 float momentum;  // horizontal momentum. moving left is negative, moving right is positive
 float velocity;
}

