float angle;
float jitter;

void jitter() {
 
  noStroke();
  fill(255);
  rectMode(CENTER);
}

void drawSquare() {


  // during even-numbered seconds (0, 2, 4, 6...)
  if (second() % 6 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(1100, 700);
  rotate(c);
  rect(0, 0, 120, 120);    
}