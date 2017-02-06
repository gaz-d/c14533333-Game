//Monster m;
Hero h;

void setup() {
  
  size(800,600);
  
  h = new Hero();
}

void draw(){
  background(255);
  h.display();
}