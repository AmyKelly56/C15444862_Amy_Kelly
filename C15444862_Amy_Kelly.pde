String gameState;

void setup() 
{
  fullScreen(P3D);
  noStroke();
  noFill();
  lights();
  frameRate(20);
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
    bar();

    if (BarLen >= BarMax)
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
  } else if (gameState == "Part")
  {
    timer();

    if (timeAccumulator >= -1)
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
    if (timeAccumulator >= 4) //change when compltete
    {
      background(0);
      stars();
      drawStar();
      
      pushMatrix();
      drawGalaxy();
      popMatrix();
     
      fill(0);
      rect(0, 370, 1278, 425);
      fill(0);
      rect(0, 370, 1300, 90);
      
       
      
      radar();
   
      
       /*pushMatrix();
      tri();
      
      
      drawtriangle();
      popMatrix();
      //drawSquares();
      */
      
   
    } 
  }
   

  }