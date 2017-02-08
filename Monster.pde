class Monster{
  
  PImage virus;
  float x ;
  float y ;
  float r;
  PVector where;
  PVector pace;
  PVector acceleration;
  
  
  Monster() {
   
    where = new PVector(width/2,height/2);
    pace = new PVector(0,0);
    acceleration = new PVector(0,0);
    virus = loadImage("Furry_monster.png");
    r  = random(50,80);

    //virus1 
   

  }
  
  void travel(){
    
    
    
    
    PVector hero_location = new PVector(mouseX,mouseY);
    hero_location.sub(where);
    hero_location.setMag(0.2);
    
    acceleration = hero_location;

    
    pace.add(acceleration);
    where.add(pace);
    pace.limit(6);
    
    //physics engine for monster to travel 
  }
  
  void display() {
    stroke(0);
   // fill(127);
   
  }
  
  void follow() {
 
    image(virus, where.x, where.y,r ,r);
    
    
  }
  
  void sides(){
    if (where.x > width) where.x =0;
    if (where.x < 0) where.x =width;
    if (where.y > height) where.y =0;
    if (where.y < 0) where.y =height;

  }
  

}//end monster class
  
  
  
  