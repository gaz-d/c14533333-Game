PImage start_screen;


Monster m;
Hero h;
flash f;
hulk hu;
start_screen s;
int stage;

void setup() {
  stage = 0;
  size(700,500,P3D);
  s= new start_screen();
  h = new Hero();
  f = new flash();
  hu = new hulk();
  m = new Monster();
  
  start_screen = loadImage("start_screen.png");
  image(start_screen,0,0,700,500);
  
 
}

void draw(){
  
  
    /* start screen method for displaying different characters*/
    
    if ((keyPressed == true) && ((key == '1')) )
    {
      
       stage = 1;
    }
    
    if( stage == 1 ){
      
    background(255,0,30);
    
    
    m.display();
    h.display();
    m.follow();
    m.travel();
    m.sides();
    
   // m.x = mouseX;
    //m.y = mouseY;
    
    h.x = mouseX ;
    h.y = mouseY ;

   // if(m.overlap(h)){
    
   // }
  }//finish displaying Deadpool Character
  
  
  
  
     if ((keyPressed == true) && ((key == '2'))) 
    {
      
       stage = 2;
    }
    
        if( stage == 2 ){
          
        background(255,0,30);
        
        
        m.display();
        hu.display();
        m.follow();
        m.travel();
        m.sides();
        
       // m.x = mouseX;
        //m.y = mouseY;
        
        hu.x = mouseX ;
        hu.y = mouseY ;
    
       // if(m.overlap(h)){
        
       // }
      }//end selection and display hulk character
      
  
  
  
  
}
   
 