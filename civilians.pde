   class civilians{
   
   PImage civilian1;
   
   float x ;
   float y;
  
  
  
  
  civilians(float tempb, float tempc) {
        x = tempb;
        y = tempc ;
        civilian1 = loadImage("civilian.png");
     
  }
  
  
   void update(){
   
   x = random(25,450);
   y = random(25,450);
   
 }
  
  
  void display() {
    stroke(0);
    fill(127);
    
   
 
    image(civilian1,x, y, 100, 100);

  }
  
 

 
}