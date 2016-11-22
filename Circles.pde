int x = width/2 + 50;
int y = height/2 + 30;
int lar = 10;
int alt = 10;
int ang = 1;
int ang2 = 1;
int ang3 = 1;

void drawCircle()
{
  
  stroke(#8C9B92);
  strokeWeight(10);
    
  noFill();
    
  ang += 1;
  ang2 += 2;
  ang3 += 3;
  
  arc(x, y, lar,alt, radians(ang), radians(ang+300));
  arc(x, y, lar+30,alt+30, radians(-ang2), radians(-ang2+150));
  arc(x, y, lar+60,alt+60, radians(ang3), radians(ang3+200));
  arc(x, y, lar+90,alt+90, radians(-ang2), radians(-ang2+300));
  arc(x, y, lar+120,alt+120, radians(ang), radians(ang+100));
  arc(x, y, lar+150,alt+150, radians(-ang3), radians(-ang3+300));
  arc(x, y, lar+180,alt+180, radians(ang), radians(ang+150));
  arc(x, y, lar+210,alt+210, radians(-ang2), radians(-ang2+200));
  
  

}