float[] xPos = new float[250];
float[] yPos = new float[250];
float[] xVel = new float[250];
float[] yVel = new float[250];
float[] s = new float[250]; 

int e = 0;
int b = 0;
int c = 100;
int p = 10;

void stars() 
{
  for (int i=0; i < 250; i++) 
  {
    xPos[i] = random(20, 1300);
  }

  for (int i=0; i < 250; i++)
  {
    yPos[i] = random(1, 350);
  }

  for (int i=0; i < 250; i++) 
  {
    xVel[i] = random(-10, 10);
  }

  for (int i=0; i < 250; i++) 
  {
    yVel[i] = random(-10, 10);
  }
  for (int i=0; i < 250; i++) 
  {
    s[i] = random(1, 6);
  }
}

void drawStar() 
{
   tracker();

  for (int i=0; i < 250; i++) 
  {
    noStroke ();
    ellipse(xPos[i], yPos[i], s[i], s[i]);
  }
}

void tracker ()
{
  noStroke ();
  line (e, b, c, a);
  e = e + 3;
  
  if (e == 600) 
  {
    e = 0;
    c = c +100;
    b = b +100;
  }
  stroke (255);

  for (int i=0; i < 250; i++) 
  {
    line (xPos[i]+p, yPos[i], xPos[i], yPos[i]);
    line (xPos[i], yPos[i]+p, xPos[i], yPos[i]);
    line (xPos[i], yPos[i], xPos[i]-p, yPos[i]);
    line (xPos[i], yPos[i], xPos[i], yPos[i]-p);
    
    if (a > yPos[i]-25) 
    {
      p = 5;
    }
    if (a < yPos[i]+25) 
    {
      p = 5;
    }
    if (a < yPos[i]-25) 
    {
      p = 0;
    }
    if (a > yPos[i]+25) 
    {
      p = 0;
    }
    i = i + 1;
  }
}