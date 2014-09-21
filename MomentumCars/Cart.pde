class Cart{
 int cartHeight;  // make proportional to payload mass?
 int xLoc;
 int yLoc;
 int stripeWidth;
 int wheelDiameter;
 float tare=0;  // the weight of the cart without payload
 float mass;
 float momentum;  // horizontal momentum. moving left is negative, moving right is positive
 float velocity;
 
 Cart(int x, int y, int stripe, float massInit, float vInit){
   xLoc=x;
   yLoc=y;
   stripeWidth=stripe;
   mass = massInit;
   velocity=vInit;
   wheelDiameter=cartWidth/4;
 }
 
 void display(){
   cartHeight=int(mass*10);
   int vertLoc=yLoc+cartHeight/2;
   stroke(0);
   strokeWeight(width*0.005);
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
