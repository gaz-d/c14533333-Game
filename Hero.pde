class Hero{
   int lives = 3;
   int MAX = 50, NUM = 20, POS = NUM - 1;
   int[] x = new int[NUM], y = new int[NUM];
  
  
  
  
  Hero() {
   // x = width/2;
  //  y= height;
  }
  
  
  void display() {
    stroke(0);
    fill(127);
    frameRate(60);
    
    for ( int i = 0; i != POS; x[i] = x[i + 1], y[i] = y[++i] );
 
    x[POS] = mouseX;
    y[POS] = mouseY;
 
    ellipse(x[0], y[0], MAX, MAX);
    
    if ( x[POS] <= 0 || y[POS] <= 0 )
    {
      background(255);
    }
    
       if ( x[POS] < 0 || y[POS] < 0)
    {
      background(255);
      lives--;
    }
  }
  
 
}