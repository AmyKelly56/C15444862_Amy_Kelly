class Particle 
{
  PVector loc, vel;
  float a, s, radius;

  Particle(PVector l, float i) {
    loc = l;
    a = i;
    s = random(200, 250);
  }

  void draw() 
  {
    //Rectangle Around Particles
    noFill();
    stroke(#0C77AF);
    rect(-250, -110, 500, 220);
  
    //Change the size of the particle in relation to its distance from the center.
    noStroke();
    radius = map(dist(loc.x, loc.y, 0, 0), 0, 120, 10, 1);
    fill(0, 150, 255);
    ellipse(loc.x, loc.y, radius, radius);
  }
  
  void drawMid() {
    fill(40);
    ellipse(loc.x, loc.y, radius-4, radius-4);
  }

void move() {
    float r = sin(radians(frameCount*(s/150)));
    vel = new PVector(sin(radians(a))*r, cos(radians(a))*r);
    vel.mult(1.2);
    loc.add(vel);
  }
}