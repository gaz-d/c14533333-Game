class Monster{
  
  PImage virus;
  float x ;
  float y ;
  PVector where;
  PVector pace;
  PVector acceleration;
  
  
  Monster() {
   
    where = new PVector(width/2,height/2);
    pace = new PVector(1,3);
    acceleration = new PVector(0,0);
    virus = loadImage("Furry_monster.png");
    //virus1 
   

  }
  
  void travel(){
    pace.add(acceleration);
    where.add(pace);
  }
  
  void display() {
    stroke(0);
   // fill(127);
    
    //ellipse(x,y,100,100);
  }
  
  void follow() {
    
 
    image(virus, where.x, where.y, 100,100);
    
    
  }
  
  void sides(){
    if (where.x > width) where.x =0;
    if (where.x < 0) where.x =width;
    if (where.y > height) where.y =0;
    if (where.y < 0) where.y =height;

  }
  
  /*
  boolean overlap(Hero main) {
  float d = dist(x,y,main.x,main.y);
    
    if(d < r + other.r) {
      return true;
    } else{
      return false;
    }
    */
  }
  
  
  
  