import ddf.minim.*;
String gameState;
String tx = "System Loaded";
Boolean textPopup = true;
Boolean mouseClickable = false;

AudioPlayer Space;
Minim minim;

void setup() 
{
  fullScreen(P3D);
  noStroke();
  noFill();
  frameRate(20);
  loop();
  smooth();
  
  minim = new Minim(this);
  Space = minim.loadFile("contact.wav");
  
  red = new Regler(width/2, 600);
  green = new Regler(width/2, 630);
  blue = new Regler(width/2, 660);

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
    Space.play();
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

  if (timeAccumulator >= 4)
  {
    mouseClickable = true;
    if (textPopup == true )    
    {
      fill(255);
      textSize(40);
      textAlign(CENTER);
      text(tx, width/2, height/2);
    }
  }
  if (textPopup == true && mousePressed == true && mouseClickable == true)
  {
    gameState = "Main";
    textPopup = false;
  } else if (gameState == "Main")
  {
    background(0);
    stars();
    drawStar();

    stroke(#0ACB35);
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

    fill(#0ACB35);
    ellipse(55, 200, 40, 40);
    ellipse(55, 250, 40, 40);
    ellipse(55, 300, 40, 40);
    ellipse(55, 350, 40, 40);

    line(55, 530, 390, 530);
    line(1200, 530, 890, 530);
    line(55, 530, 55, 730);
    line(1200, 530, 1200, 730);
    line(55, 730, 1200, 730);
    fill(0);
    arc(width/2, 530, 500, 220, 0, PI);
    //line(390, 15, 530, 15);
    //line(890, 1200, 1, 1200);

    //rect(0, height-250, 50, 150);


    //drawTri();

    pushMatrix();
    drawGalaxy();
    popMatrix();


    pushMatrix();
    drawTrack();
    popMatrix();

    drawCircle();
    drawlever();
    
    
  }
}