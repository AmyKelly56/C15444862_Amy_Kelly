/*Variables, loops, methods
Arrays & array lists
Objects, inheritance, polymorphism
The unit circle and trigonometry
pushMatrix, popMatrix, translate and rotate
*/
Particle[] particles;

int am = 1000;

void setup() 
{
  size(1000, 1000);
  noStroke();
  
  particles = new Particle[am];
  for (int i = 0; i < am; i++) {
    particles[i] = new Particle(new PVector(0, 0), i);
  }
}

void draw() 
{
  background(40);
  
  translate(width/2, 120);
  for (int i = 0; i < am; i++) {
    particles[i].draw();
  }
  for (int i = 0; i < am; i++) {
    particles[i].drawMid();
    particles[i].move();
  }
}

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
    noFill();
    stroke(0);
    rect(-250, -110, 500, 220);
  
    //Change the size of the particle in relation to its distance from the center.
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