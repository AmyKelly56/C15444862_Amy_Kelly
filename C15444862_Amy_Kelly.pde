/*Variables, loops, methods
Arrays & array lists
Objects, inheritance, polymorphism
The unit circle and trigonometry
pushMatrix, popMatrix, translate and rotate
*/
Particle[] particles;

int am = 1000;
float a = 30;

int borderStroke = 5;

void setup() {
  size(1000, 1000);
  noStroke();
  particles = new Particle[am];
  for (int i = 0; i < am; i++) {
    particles[i] = new Particle(new PVector(0, 0), i);
  }
}

void draw() {
  background(40);
  
 

  translate(width/2, 120);
  for (int i = 0; i < am; i++) {
    particles[i].draw();
  }
  for (int i = 0; i < am; i++) {
    particles[i].drawMid();
    particles[i].move();
  }
  
  //green balls sideways
  noStroke();
  fill(0, 255, 150);
  translate(width/2-25, height/2);
  for (int i = 0; i < 360; i+=a) {
    for(int k = -36; k < 36; k++){
      float x = i/(a/6)+tan(radians(dist(i/(a/2), i/(a/2), 0, 0)+k*50+frameCount))*a;
      ellipse(x, k*10, 5, 5);
    }
  }
}


  void draw() {
    
    noFill();
    stroke(0);
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
    float r = sin(radians(frameCount*(s/150))); //change how far it spans out
    vel = new PVector(sin(radians(a))*r, cos(radians(a))*r);
    vel.mult(1.2);
    loc.add(vel);
  }
}