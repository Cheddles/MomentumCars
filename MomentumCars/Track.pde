class Track{
  
  Track(){
  }
  
  void display(){
    strokeWeight(height/200);
    stroke(0);
    line(0,trackHeight, width, trackHeight);
    for(int i=0; i<11; i++){
      line(i*(width/10),trackHeight, i*(width/10), trackHeight+height/50);      
    }
  }
}
