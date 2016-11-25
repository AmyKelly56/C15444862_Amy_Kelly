
boolean button = false;

int x = 150;
int y = 600;
int w = 100;
int h = 75;

void button() 
{
  if (button) 
  {
    fill(random(255), random(255), random(255));
    rect(270, 600, 100, 75);
    stroke(0);
  } 
  else 
  {
    fill(0);
    stroke(255);
  }
  
  fill(175);
  rect(x,y,w,h);
}

void mousePressed() 
{
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) 
  {
    button = !button;
  }  
}