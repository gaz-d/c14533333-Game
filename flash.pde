class flash{
  
   PImage Flash;
   int lives = 3;
   int score = 0;
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
    
   
  }//function to display score and lives
  
 
}