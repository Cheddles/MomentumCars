class Cart{
 int topLocation;  // make height to payload mass?
 int xLoc;
 int yLoc;
 int stripeWidth;
 int wheelDiameter;
 float tare=0;  // the weight of the cart without payload (effective minimum mass)
 float mass;
 float momentum;  // horizontal momentum. moving left is negative, moving right is positive
 float velocity;
 boolean dragging=false;  // is the cart being dragged to change mass
 int yOffset;
 
 Cart(int x, int y, int stripe, float massInit, float vInit){
   xLoc=x;
   yLoc=y;
   stripeWidth=stripe;
   mass = massInit;
   velocity=vInit;
   wheelDiameter=cartWidth/4;
 }
 
 void display(){
   topLocation = yLoc-wheelDiameter/2-int(mass*10);
   //int vertLoc=yLoc+cartHeight/2;
   stroke(0);
   strokeWeight(width*0.005);
   //rectMode(CENTER);
   fill(carColour);
   rect(xLoc-cartWidth/2, topLocation, cartWidth, int(mass*10));
   // rect(xLoc, yLoc-cartHeight/2-wheelDiameter/2, cartWidth, cartHeight);
   fill(BGColour);
   ellipse(xLoc-cartWidth/4, yLoc-wheelDiameter/2, wheelDiameter, wheelDiameter);
   ellipse(xLoc+cartWidth/4, yLoc-wheelDiameter/2, wheelDiameter, wheelDiameter);
 }
 
 void move(int deltaT){  //moving after explosive goes off
   
 }
 
 void drag(int x, int y){
   
 }
 
 void click(int x, int y){
   
 }
 
 void clicked(int x, int y){
//   cartHeight=int(mass*10);
   if ((y>(topLocation-height/20))&&(y<topLocation+height/20)){
     if ((x>(xLoc-cartWidth/2))&&(x<(xLoc+cartWidth/2))){
       dragging=true;
       yOffset=y-topLocation;
     }
   }
 }
 
 void drag(int y){
   topLocation=y-yOffset;
   mass=(yLoc-wheelDiameter/2-topLocation)/10.0;
 }
 
}
