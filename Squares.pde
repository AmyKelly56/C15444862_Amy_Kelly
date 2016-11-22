float k;
float r;
 
void drawSquares()
{
  
  fill(random(255), random(255), random(255));
  rectMode(CENTER);
  k = 0;
 
  translate(200, 300);
  rotate(k);
  rect(0,0,50,50);
 
  resetMatrix();
  translate(300, 100);
  rotate(k);
  rect(0,0,50,50);
 
  resetMatrix();
  translate(200,200);
  rotate(c);
  rect(0,0,50,50);
   
  resetMatrix();
  translate(200, 100);
  rotate(k);
  rect(0,0,50,50);
   
  resetMatrix();
  translate(100, 100);
  rotate(k);
  rect(0,0,50,50);
   
  resetMatrix();
  translate(100,200);
  rotate(k);
  rect(0,0,50,50);
   
  resetMatrix();
  translate(300,200);
  rotate(k);
  rect(0,0,50,50);
   
  resetMatrix();
  translate(100,300);
  rotate(k);
  rect(0,0,50,50);
   
  resetMatrix();
  translate(300,300);
  rotate(k);
  rect(0,0,50,50);
   
  r = r - 0.1;
  k = k + 0.07; 
}