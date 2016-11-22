String gameState;
String tx = "System Loaded";
Boolean textPopup = true;

void setup() 
{
  fullScreen(P3D);
  noStroke();
  noFill();
  lights();
  frameRate(20);
  loop();
  smooth();

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

void draw() 
{
  background(40);
  if (gameState == "Open")
  {
    background(0);
    pushMatrix();
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
    popMatrix();
  }

  timer();
  if (timeAccumulator >= 40)
  {

    if (textPopup == true)    
    {
      fill(255);
      textSize(40);
      textAlign(CENTER);
      text(tx, width/2, height/2);
    }
  }
  if (textPopup == true && mousePressed == true)
  {
    gameState = "Main";
  } else if (gameState == "Main")
  {
    background(0);
    stars();
    drawStar();

    stroke(#5AF79A);
    strokeWeight(3);
    line(0, 350, width, 350);


    pushMatrix();
    drawGalaxy();
    popMatrix();

    pushMatrix();
    drawSquare();
    popMatrix();
    
    radar();

 
    
    
     
  }
}