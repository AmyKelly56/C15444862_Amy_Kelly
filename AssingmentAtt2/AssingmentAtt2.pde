String tx = "System Loaded!\nClick to Continue";
String gameState;
int BarLen = 0;
int BarHeight = 80;
int BarMax = 775;
int BarXPos = 11;
int BarYPos = 10;
Boolean textPopup = false;

float x = 0;
float y = 0;
//variable for particles
int am = 1000;

Particle[] particles = new Particle[am];
 

void setup() {
  
  fullScreen();
  background(0);
  smooth();
  fill(0);
  
  
  for (int i = 0; i < am; i++) 
  {
    particles[i] = new Particle(new PVector(0, 0), i);
  }
  
  gameState = "Open";
   
}

void draw() {
  
  if(gameState == "Open")
  {
  
    bar();
    
    if (BarLen >= BarMax) { //if the previous bar has finished drawing, draw a new bar 100 pixels down
      BarYPos += 100;
      BarLen = 0;
      bar();
      
      if(BarYPos > height) {
        BarYPos = BarYPos;
      }
    }
  }
  if(textPopup == true)
  {
    fill(255);
    textSize(40);
    text(tx, BarMax + 150, height/2); 
  }
  
  if(textPopup == true && mousePressed == true)
  {
    gameState = "Next";
    
  }
  else if(gameState == "Next")
  {
    background(0);
    for (int i = 0; i < am; i++) 
    {
      particles[i].drawp();
      particles[i].drawMid();
      particles[i].move();
    }      
  }
  

}


  