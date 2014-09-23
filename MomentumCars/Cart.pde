class Cart{
 int topLocation;  // make height to payload mass?
 int xLoc;
 int xLocInit;  //initial horizontal location
 int yLoc;
 int wheelDiameter;
 float tare=1;  // the mass of the cart without payload (effective minimum mass)
 float mass;  // in kg
 float momentum;  // horizontal momentum. moving left is negative, moving right is positive
 float velocity;
 boolean dragging=false;  // is the cart being dragged to change mass
 int yOffset;
 
 Cart(int x, int y, float massInit, float vInit){ 
   xLoc=x;
   xLocInit=x;
   yLoc=y;
   mass = massInit;
   velocity=vInit;
   wheelDiameter=cartWidth/4;
 }

  void display(){
   topLocation = yLoc-wheelDiameter/2-int(mass*10);
   xLoc=xLocInit+int(velocity*float(millis()-detTime)/1000*distanceScale);
   //   xLoc=xLoc+int(velocity*float(thisTime-lastTime)/1000.0*distanceScale);
   //int vertLoc=yLoc+cartHeight/2;
   stroke(0);
   strokeWeight(width*0.005);
   //rectMode(CENTER);
   fill(carColour);
   rect(xLoc-cartWidth/2, topLocation, cartWidth, int(mass*10));
   fill(BGColour);
   strokeWeight(width*0.005);
   ellipse(xLoc-cartWidth/4, yLoc-wheelDiameter/2, wheelDiameter, wheelDiameter);
   ellipse(xLoc+cartWidth/4, yLoc-wheelDiameter/2, wheelDiameter, wheelDiameter);
   fill(0);
   textSize(height/30);
   textAlign(CENTER, CENTER);
   text(str(mass)+"kg", xLoc, yLoc+height/15);
 }
 
 void move(int deltaT){  //moving after explosive goes off
   
 }
 
 void drag(int x, int y){
   
 }
 
 void click(int x, int y){
   
 }
 
 void clicked(int x, int y){
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
 
// void move(){
//   xLoc=xLoc+int(velocity*float(thisTime-lastTime)/1000.0*distanceScale);
// }
}
