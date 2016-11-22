ArrayList galaxies = new ArrayList();

void drawGalaxy()
{
  translate(width/2, 150);
  rotateX(radians(1+mouseY/3));
  rotateY(radians(1+mouseX/3));
  rotateZ(radians(90));
  
  for(int i = 0; i < 10; i++)
  {
    float zDiff = random(-0.08, 0.08);
    float xyDiff = random(-50, 50);
 
    galaxies.add(new Galaxy(new PVector(sin(radians(xyDiff+frameCount*4))*1.5, zDiff, cos(radians(xyDiff+frameCount*4))*1.5)));
    galaxies.add(new Galaxy(new PVector(-sin(radians(xyDiff+frameCount*4))*1.5, zDiff, -cos(radians(xyDiff+frameCount*4))*1.5)));
  }
  for(int i = 0; i < galaxies.size(); i++)
  {
    Galaxy p = (Galaxy) galaxies.get(i);
    pushMatrix();
    p.starGalaxy();
    popMatrix();
    p.move(); 
  }
}

class Galaxy 
{
  PVector loc, vel;
  
  float life = random(90, 100 );
  float maxLife = life;
  
  Galaxy(PVector vel)
  {
    loc = new PVector(0, 0, 0);
    this.vel = vel;
  }
  
  void starGalaxy()
  {
    translate(loc.x, loc.y, loc.z);
    float gAndA = map(life, 100, maxLife, 100, 255);
    stroke(map(life, 0, maxLife, 150, 255), gAndA, map(life, 0, maxLife, 255, 0), gAndA);
    strokeWeight(map(life, 0, maxLife, 5, 1));
    point(0, 0, 0);
    life--;
    
    if(life <= 0)
    {
      galaxies.remove(this); 
    }
  }
  
  void move()
  { 
    loc.add(vel);
  }
}