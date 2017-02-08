PImage start_screen;
PImage game_screen;


Monster m;
Hero h;
flash f;
hulk hu;
civilians c;
start_screen s;
int stage;

void setup() {
  frameRate(1000);
  stage = 0;
  size(700,500,P3D);
  s= new start_screen();
  h = new Hero();
  f = new flash();
  hu = new hulk();
  m = new Monster();
  c = new civilians();
  
  start_screen = loadImage("start_screen.png");
  game_screen = loadImage("game_background.png");
  image(start_screen,0,0,700,500);
  
 
}

void draw(){
  
  
    /* start screen method for displaying different characters*/
    
    if ((keyPressed == true) && ((key == '1')) )
    {
      
       stage = 1;
    }
    
    if( stage == 1 ){
      
    image(game_screen,0,0,700,500);        
    
    
    m.display();
    h.display();
    m.follow();
    m.travel();
    m.sides();
    c.display();
    
   // m.x = mouseX;
    //m.y = mouseY;
    
    h.x = mouseX ;
    h.y = mouseY ;

   if(m.overlap(h)){
    
   // }
  }//finish displaying Deadpool Character
  
  
  
  
     if ((keyPressed == true) && ((key == '2'))) 
    {
      
       stage = 2;
    }
    
        if( stage == 2 ){
          
        image(game_screen,0,0,700,500);        
        
        m.display();
        hu.display();
        m.follow();
        m.travel();
        m.sides();
        c.display();

        
       // m.x = mouseX;
        //m.y = mouseY;
        
        hu.x = mouseX ;
        hu.y = mouseY ;
    
       // if(m.overlap(h)){
        
       // }
      }//end selection and display hulk character
      
      
      
      
      
      
      if ((keyPressed == true) && ((key == '3'))) 
    {
      
       stage = 3;
    }
    
        if( stage == 3 ){
          
    image(game_screen,0,0,700,500);        

        
        
        m.display();
        f.display();
        m.follow();
        m.travel();
        m.sides();
        c.display();
        
       // m.x = mouseX;
        //m.y = mouseY;
        
        f.x = mouseX ;
        f.y = mouseY ;
    
       // if(m.overlap(h)){
        
       // }
      }//end selection and display flash character
    
}
   
 