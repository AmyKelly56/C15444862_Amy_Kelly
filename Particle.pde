class Particle 
{
  PVector loc, vel;
  float a, s, radius;

  Particle(PVector l, float i) {
    loc = l;
    a = i;
    s = random(200, 250);
  }
}