class Hero{
  
  float x;
  float y;
  
  Hero() {
    x = width/2;
    y= height;
  }
  
  
  void display() {
    stroke(0);
    fill(127);
    ellipse(x,y,80,80);
  }
}