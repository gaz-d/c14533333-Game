class Hero{
  
   PImage Deadpool;
   int lives = 3;
   int score =0;
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
 
  }
  
  
  void score1(){
    
    PFont f = createFont("TrebuchetMS-Bold" ,20);
    
    String l = "Lives:";
    String sc = "Score:";
    
    textFont(f);
    
    text(l,10,30);
    text(lives,10,50);
    text(sc,620,30);
    text(score,680,30);
    
    textSize(20);
   
  }//end score1
 
}//end class