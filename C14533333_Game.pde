Monster m;
Hero h;
start_screen s;
int x1 =0;

void setup() {
  
  size(800,600,P3D);
  
  s= new start_screen();
  h = new Hero();
  m = new Monster();
}

void draw(){
  
    background(255,0,30);
    m.display();
    h.display();
    m.follow();
    m.travel();
    m.sides();
    
   // m.x = mouseX;
    //m.y = mouseY;
    
    h.x = mouseX -25;
    h.y = mouseY -25;

    
   // if(m.overlap(h)){
    
   // }
    

}
   
 
  