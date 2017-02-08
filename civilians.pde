   class civilians{
   
   PImage civilian1;
   int lives = 3;
   float x ;
   float y;
  
  
  
  
  civilians() {
        x = 300;
        y = 300;
        civilian1 = loadImage("civilian.png");
     
  }
  
  
  void display() {
    stroke(0);
    fill(127);
    
   
 
    image(civilian1,x, y, 100, 100);
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