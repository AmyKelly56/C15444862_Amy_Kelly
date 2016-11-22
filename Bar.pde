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
  
  if (BarLen == BarMax)
  {
    BarLen = BarMax;
  }
  if(BarYPos > height)
  {
    textPopup = true;
  }
  
  fill(random(255), random(255), random(255));
  rect(BarXPos,BarYPos,BarLen,BarHeight);
}