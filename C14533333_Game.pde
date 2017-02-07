Monster m;
Hero h;
start_screen s;

void setup() {
  
  size(800,600,P3D);
  
  s= new start_screen();
  h = new Hero();
  m = new Monster();
}

void draw(){
  background(255,0,30);
    s.display();
}
   void keyPressed(){
    switch(key)
    {
      case '1':
    h.display();
 
  
    }
}