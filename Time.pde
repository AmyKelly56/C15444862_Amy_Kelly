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