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

    stroke(#8C9B92);
    strokeWeight(3);
    fill(0);
    arc(width/2, 55, 500, 100, 0, PI);
    line(55, 55, 390, 55);
    line(1200, 55, 890, 55);
    line(55, 55, 55, 500);
    line(1200, 55, 1200, 500);
    line(55, 500, 390, 500);
    line(1200, 500, 890, 500);
    pushMatrix();
    translate(width/2, height/2+100);
    rotate(radians(180));
    arc(0, 0, 500, 200, 0, PI);
    popMatrix();


    pushMatrix();
    drawGalaxy();
    popMatrix();
    
    drawCircle();

    /*pushMatrix();
    drawSquare();
    popMatrix();
    
    //radar(); 
    */
  }
}