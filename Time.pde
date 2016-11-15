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

float a = 30;

void dots()
{
  translate(width/2, height);
  for (int i = 0; i < 360; i+=a) 
  {
    for (int k = -15; k < 15; k++) 
    {
      float x = i/(a/6)+tan(radians(dist(i/(a/2), i/(a/2), 0, 0)+k*50+frameCount))*a;
      ellipse(x, k*10, 5, 5);
    }
  }
}
    