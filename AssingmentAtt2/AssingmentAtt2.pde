String tx = "System Loaded!\nClick to Continue";
String gameState;
int BarLen = 0;
int BarHeight = 80;
int BarMax = 775;
int BarXPos = 11;
int BarYPos = 10;
Boolean textPopup = false;
PImage img;
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
  
  img = loadImage("alienhead.jpg.png");
  
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
    for (int i = 0; i < am; i++) 
    {
      particles[i].drawp();
      particles[i].drawMid();
      particles[i].move();
    }      
  }
  
  else
  { 
    text("OOPS", 50, 50);  
  }
  
  image(img, x, y);
    
  x = lerp(x, mouseX, 0.1);
  y = lerp(y, mouseY, 0.1);
}
 
void bar() {
  
  
  BarLen += 70;
  
  if (BarLen == BarMax) { //stop the bar before it goes off the screen
    BarLen = BarMax;
    }
    
   if(BarYPos > height)
   {
     textPopup = true;
   }
    
  stroke(0,255,0); //draw the progress bar
  fill(0,255,0);
  rect(BarXPos,BarYPos,BarLen,BarHeight);
}


  