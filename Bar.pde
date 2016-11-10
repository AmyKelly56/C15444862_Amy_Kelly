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