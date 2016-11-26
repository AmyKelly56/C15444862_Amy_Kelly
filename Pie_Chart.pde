int[] angles = { 30, 25, 45, 35, 60, 38, 60, 67 };

void drawPie() {
  pieChart(80, angles);
}

void pieChart(float diameter, int[] data) 
{
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) 
  {
    fill(random(255), random(255), random(255));
    arc(1200, 250, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
  }
}