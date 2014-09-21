class Cart{
 int cartHeight;  // make proportional to payload mass?
 int cartWidth;
 int xLoc;
 int yLoc;
 int stripeWidth;
 int wheelDiameter;
 float tare=0;  // the weight of the cart without payload
 float mass;
 float momentum;  // horizontal momentum. moving left is negative, moving right is positive
 float velocity;
 
 Cart(int x, int y, int cartWide, int stripe, float massInit, float vInit){
   xLoc=x;
   yLoc=y;
   cartWidth=cartWide;
   stripeWidth=stripe;
   mass = massInit;
   velocity=vInit;
   wheelDiameter=cartWidth/5;
 }
 
 void display(){
   cartHeight=int(mass*10);
   int vertLoc=yLoc+cartHeight/2;
   stroke(0);
   strokeWeight(width*0.01);
   rectMode(CENTER);
   fill(carColour);
   rect(xLoc, yLoc-cartHeight/2, cartWidth, cartHeight);
   fill(BGColour);
   ellipse(xLoc-cartWidth/4, yLoc, wheelDiameter, wheelDiameter);
   ellipse(xLoc+cartWidth/4, yLoc, wheelDiameter, wheelDiameter);
 }
 
 void move(int deltaT){
   
 }
}
