class Hero{
   int lives = 3;
   float x ;
   float y;
  
  
  
  
  Hero() {
      
  }
  
  
  void display() {
    stroke(0);
    fill(127);
    frameRate(60);
    
   
 
    ellipse(x, y, 100, 100);
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