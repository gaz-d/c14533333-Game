class Monster{
  
  PImage virus;
  PShape monster;
  float x;
  float y;
  
  Monster() {
    x = width/2;
    y= height/2;
    virus = loadImage("Furry_monster.png");

  }
  
  
  void display() {
    
    stroke(0);
   // fill(127);
    
    //ellipse(x,y,100,100);
    imageMode(CENTER);
    image(virus,x,y,100,100);
  }
  
}