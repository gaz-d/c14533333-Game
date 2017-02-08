class flash{
  
   PImage Flash;
   int lives = 3;
   int score =0;
   float x ;
   float y;
  
  
  
  
  flash() {
      
        Flash = loadImage("flash.png");
       
    
  }
  
  
  void display() {
    stroke(0);
    fill(127);
    frameRate(60);
    
   
 
    image(Flash,x, y, 150, 150);
 
  }
  
 
}