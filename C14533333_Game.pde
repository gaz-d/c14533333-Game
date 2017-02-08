PImage start_screen;
PImage game_screen;
PImage game_over;


Monster m;
Hero h;
flash f;
hulk hu;
civilians c;

int stage;

void setup() {
  frameRate(1000);
  stage = 0;
  size(700,500,P3D);

  h = new Hero();
  f = new flash();
  hu = new hulk();
  m = new Monster();
  c = new civilians(300,300);
  
  start_screen = loadImage("start_screen.png");
  game_screen = loadImage("game_background.png");
  game_over = loadImage("game_over.png");
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
    h.score1();
    
    if(dist(h.x,h.y,c.x,c.y)<= 50){
        h.score++;
        c.update();
      }
      
     if(dist(h.x,h.y,m.where.x,m.where.y)<= 45){
       if(h.lives <= 0)
       {
         
        stage = 4;
     
       }
        h.lives--;
        m.follow();
        m.where.x = 100;
        m.where.y = 100;
       
      } //checks if monster is near hero and decrements score if within a certain distance
      
      if(h.score % 5 == 0){
        h.lives += 1;
        h.score += 1;
      }//ever fifth civilian the user gets an extra life
      
      
    c.display();
    
    h.x = mouseX ;
    h.y = mouseY ;


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
        hu.score1();//display score and lives
        
        
      if(dist(hu.x,hu.y,c.x,c.y)<= 50){
        f.score++;
        c.update();
      }
      
       if(dist(hu.x,hu.y,m.where.x,m.where.y)<= 45){
       if(h.lives <= 0)
       {
         
        stage = 4;
     
       }
        hu.lives--;
        m.follow();
        m.where.x = 100;
        m.where.y = 100;
        
        
      } //checks if monster is near hero and decrements score if within a certain distance
      
      if(hu.score % 5 == 0){
        hu.lives += 1;
        hu.score += 1;
      }//ever fifth civilian the user gets an extra life
      
      
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
        f.score1();
        
      if(dist(f.x,f.y,c.x,c.y)<= 50){
        f.score++;
        c.update();
      }
      
       if(dist(f.x,f.y,m.where.x,m.where.y)<= 45){
       if(f.lives <= 0)
       {
         
        stage = 4;
     
       }
        f.lives--;
        m.follow();
        m.where.x = 100;
        m.where.y = 100;
        
        
      } 
      
      if(f.score % 5 == 0){
        f.lives += 1;
        f.score += 1;
      }//ever fifth civilian the user gets an extra life
      
      
        c.display();
        
       // m.x = mouseX;
        //m.y = mouseY;
        
        f.x = mouseX ;
        f.y = mouseY ;
    //end selection and display flash character
    
}

    if(stage == 4 ){
    
      
      image(game_over,0,0,700,500);
      h.score1();
      
      if((keyPressed == true) && ((key == '0'))) 
      {
        stage = 0;
      }
    
    
    }
}
   