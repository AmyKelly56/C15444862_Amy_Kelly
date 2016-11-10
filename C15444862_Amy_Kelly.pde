/* methods
 Arrays & array lists
 Objects, inheritance, polymorphism
 The unit circle and trigonometry
 pushMatrix, popMatrix, translate and rotate  
 */

String gameState;
int am = 1000;

Particle[] particles = new Particle[am];

float x = 0;
float y = 0;

PImage img;

void setup() 
{
  fullScreen();
  noStroke(); 
  img = loadImage("alienhead.jpg.png");
  smooth();

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
  if (gameState == "Open")
  {
    bar();

    if (BarLen >= BarMax) //if the previous bar has finished drawing, draw a new bar 100 pixels down
    {
      BarYPos += 100;
      BarLen = 0;
      bar();

      if (BarYPos > height) 
      {
        BarYPos = BarYPos;
      }
    }
  }
  if (textPopup == true)
  {
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(tx, width/2, height/2);
  }

  if (textPopup == true && mousePressed == true)
  {
    gameState = "Part";
  } 
  else if (gameState == "Part")
  {
    timer();
    
    if(timeAccumulator >= 0)
    {
      background(0);
      translate(width/2, height/2);
      
      for (int i = 0; i < am; i++) 
      {
        particles[i].drawpart();
      }
      for (int i = 0; i < am; i++) 
      {
        particles[i].drawMid();
        particles[i].move();
      }
    }
    if (timeAccumulator >= 40)
    {
      background(0);
      
      star();
      drawStar();
      newShootingStar();
    }
    
  }
  else if (gameState == "Radar")
  {
    background(0);

    for (Radar r : radars)
    {
      r.update();
      r.render();
    }

    image(img, x, y);

    x = lerp(x, mouseX, 0.1);
    y = lerp(y, mouseY, 0.1);
  }

}