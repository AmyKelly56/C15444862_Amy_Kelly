/*Variables, loops, methods
Arrays & array lists
Objects, inheritance, polymorphism
The unit circle and trigonometry
pushMatrix, popMatrix, translate and rotate  
*/

String tx = "System Loaded!\nClick to Continue";
String gameState;
int BarLen = 0;
int BarHeight = 80;
int BarMax = 775;
int BarXPos = 11;
int BarYPos = 10;
Boolean textPopup = false;

//radar variable
float an=0;
//Array Defined

int am = 1000;

Particle[] particles = new Particle[am];

float x = 0;
float y = 0;;

PImage img;


void setup() 
{
  fullScreen();
  noStroke();
  smooth();
  
  img = loadImage("alienhead.jpg.png");
  
  
 cx = width / 2;
 cy = height / 2;
  
  radars.add(new Radar(100, 100, 50, 0.01f)); 
  
   for (int i = 0; i < am; i++) 
  {
    particles[i] = new Particle(new PVector(0, 0), i);
  }
  
  gameState = "Open";
}

float speed = 0.01;
int trailLength = 50;  
float theta = 0;
float cx, cy;
float radius = 200;
ArrayList<Radar> radars = new ArrayList<Radar>();


void draw() 
{
  background(40);
   if(gameState == "Open")
  {
    bar();
    
    if (BarLen >= BarMax) //if the previous bar has finished drawing, draw a new bar 100 pixels down
    {
      BarYPos += 100;
      BarLen = 0;
      bar();
        
      if(BarYPos > height) 
      {
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
  
  //6 circles
  strokeWeight(3);
  stroke(#0C77AF);
  //first circle
  ellipse(1100, 400, 100, 100);
 
  strokeWeight(0);
  ellipse(1100, 400, 85, 85);
  ellipse(1100, 400, 70, 70);
  ellipse(1100, 400, 55, 55);
  ellipse(1100, 400, 40, 40);
  ellipse(1100, 400, 25, 25);
  ellipse(1100, 400, 15, 15);
  
  
  //second circle
  noFill();
  stroke(#0C77AF);
  ellipse(970,400,20,20);
  ellipse(970,400,40,40);
  ellipse(970,400,80,80);
 
 

  
  //third circle
  ellipse(1100, 510, 100, 100);
  ellipse(970, 510, 100, 100);
  ellipse(1100, 620, 100, 100);
  ellipse(970, 620, 100, 100);
 
 
  translate(width/2, 120);
  for (int i = 0; i < am; i++) {
    particles[i].drawp();
  }
  for (int i = 0; i < am; i++) {
    particles[i].drawMid();
    particles[i].move();
  }
  
  for(Radar r:radars)
  {
    r.update();
    r.render();
  }
  
  image(img, x, y);
    
  x = lerp(x, mouseX, 0.1);
  y = lerp(y, mouseY, 0.1);
  }
}