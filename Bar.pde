int BarLen = 0;
int BarHeight = 80;
int BarMax = 775;
int BarXPos = 11;
int BarYPos = 10;
Boolean textPopup = false;
String tx = "System Loaded!\nClick to Continue";

void bar() 
{
  BarLen += 70;
  
  if (BarLen == BarMax) //stop the bar before it goes off the screen
  {
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