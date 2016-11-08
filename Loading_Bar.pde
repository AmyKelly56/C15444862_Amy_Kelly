PFont f;
boolean mouseIsDown = false;
boolean loading = false;



void loading()
{
  
  if(mouseIsDown == true)
  {
    loading = true;
    frameCount = 1;
  }
  if(loading == false)
  {
    fill(255);
    textAlign(CENTER);
    
  }
  if(loading == true)
  {
    fill(255);
    textAlign(LEFT);
    text ("LOADING " + int((frameCount%301) / 3) + "%", 50, 130);
    rect(48, 138, 204, 24);
    fill(0);
    int fillX = ((frameCount%301) / 3 * 2);
    rect(250, 140, fillX-200, 20);
    if(frameCount%301 == 0)
    {
      loading = false;
    }
  }
}