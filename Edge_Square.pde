int x1 = 0;  
int y1 = 0;  
int speedsq = 5;  
int state = 0;  

void drawEdge() 
{
  fill(#0ACB35);
  rect(x1,y1,9,9);

  if (state == 0) 
  {
    x1 = x1 + speedsq;

    if (x1 > width-10) 
    {
      x1 = width-10;
      state = 1;
    }
  } 
  else if (state == 1) 
  {
    y1 = y1 + speedsq;
    if (y1 > height-65) 
    {
      y1 = height-65;
      state = 2;
    }
  } 
  else if (state == 2) 
  {
    x1 = x1 - speedsq;
    if (x1 < 0) {
      x1 = 0;
      state = 3;
    }
  } 
  else if (state == 3) 
  {
    y1 = y1 - speedsq;
    if (y1 < 0) 
    {
      y1 = 0;
      state= 4;
    }
  }
  else if (state == 4)
  {
    y1 = y1 + speedsq;
    if(y1 < 0)
    {
      y1 = 10;
      state = 1;
    }
  }    
}