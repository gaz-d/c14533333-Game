class Hero{
  
   PImage Deadpool;
   int lives = 3;
   float x ;
   float y;
  
  
  
  
  Hero() {
      
        Deadpool = loadImage("Deadpool.png");
     
  }
  
  
  void display() {
    stroke(0);
    fill(127);
    frameRate(60);
    
   
 
    image(Deadpool,x, y, 100, 100);
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