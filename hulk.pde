class hulk{
  
   PImage Hulk;
   int lives = 3;
   float x ;
   float y;
  
  
  
  
  hulk() {
      
        Hulk = loadImage("The_hulk.png");
        
    
  }
  
  
  void display() {
    stroke(0);
    fill(127);
    frameRate(60);
    
   
 
    image(Hulk,x, y, 100, 100);
  /*  
    if ( x[POS] <= 0 || y[POS] <= 0 )
    {
      background(255);
    }
    
       if ( x[POS] < 0 || y[POS] < 0)
    {
      background(255);
      lives--;
    }*/
  }
  
 
}