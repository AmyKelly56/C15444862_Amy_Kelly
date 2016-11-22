float an=0;

void radar()
{
  fill(0,5); noStroke();rect(0,0,width,height);stroke(0,255,0);an+=0.01;
  line(width/2,600, width/2+cos(an)*100, 600+sin(an)*100);
  if(random(10)<1)
  {
    fill(100,255,100);
    float r=random(10,100);
    ellipse(width/2+cos(an)*r,600+sin(an)*r,4,4);
  }
  noFill();
  stroke(0,255,0);
  
  ellipse(width/2, 600, 50, 50);
  ellipse(width/2, 600, 100, 100);
  ellipse(width/2, 600, 150, 150);
}