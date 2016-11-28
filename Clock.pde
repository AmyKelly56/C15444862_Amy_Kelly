DigitalClock digitalClock;

void drawClock() 
{
  digitalClock = new DigitalClock(40, width/2, 60);
  digitalClock.getTime();
  digitalClock.display();
}

class DigitalClock extends Clock 
{
  int fontSize;
  float x, y;
  
  DigitalClock(int _fontSize, float _x, float _y) 
  {
    fontSize = _fontSize;
    x = _x;
    y = _y;
  }
  
  void getTime() 
  {
    super.getTime();
  }
  
  void display() 
  {
    textSize(fontSize);
    textAlign(CENTER);
    text (h + ":" + nf(m, 2) + ":" + nf(s, 2), x, y);
  } 
}

class Clock 
{
  int h, m, s;
  Clock(){
  }
  
  void getTime() 
  {
    h = hour();
    m = minute();
    s = second();
  }
}

//Timer Function for Game States
float timeDelta = 0;
float timeAccumulator = 0;
int last = 0;

void timer()
{
  int now = millis();
  timeDelta = (now - last) / 1000.0f;  
  last = now;
    
  timeAccumulator += timeDelta;    
}