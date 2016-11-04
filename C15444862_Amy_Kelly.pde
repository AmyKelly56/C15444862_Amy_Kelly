/*Variables, loops, methods
Arrays & array lists
Objects, inheritance, polymorphism
The unit circle and trigonometry
pushMatrix, popMatrix, translate and rotate  
*/


// class make an object 
// void fucnction call like draw midpoint();


//radar variable
float an=0;
//Array Defined
Particle[] particles;

int am = 1000;

float x = 0;
float y = 0;

PImage img;


void setup() 
{
  size(1200, 700);
  noStroke();
  smooth();
  
  img = loadImage("alien.jpg");
  
  cx = width / 2;
 cy = height / 2;
  
  radars.add(new Radar(100, 100, 50, 0.01f)); 
  
  particles = new Particle[am];
  for (int i = 0; i < am; i++) {
    particles[i] = new Particle(new PVector(0, 0), i);
  }
}

float speed = 0.01;
int trailLength = 50;  
float theta = 0;
float cx, cy;
float radius = 200;
ArrayList<Radar> radars = new ArrayList<Radar>();

void drawRadar()
{
  background(0);
  stroke(0, 255, 0);
  noFill();
  ellipse(cx, cy, radius * 2, radius * 2);

  float intensityChange = 255.0f / trailLength;
  for(int i = 0 ; i < trailLength ; i ++)
  {
    float lineTheta = theta - (i * speed);
    stroke(0, 255 - (i * intensityChange), 0);
    float x = cx + sin(lineTheta) * radius;
    float y = cy - cos(lineTheta) * radius;
    line(cx, cy, x, y);
  }
  theta += speed;
}

void draw() 
{
  background(40);
 
  //6 circles
  strokeWeight(3);
  stroke(#0C77AF);
  //first circle
  ellipse(1100, 400, 100, 100);
 
  strokeWeight(0);
  ellipse(1100, 400, 85, 85);
  ellipse(1100, 400, 70, 70);
  ellipse(1100, 400, 55, 55);
  ellipse(1100, 400, 40, 40);
  ellipse(1100, 400, 25, 25);
  ellipse(1100, 400, 15, 15);
  
  
  //second circle
  noFill();
  stroke(#0C77AF);
  ellipse(970,400,20,20);
  ellipse(970,400,40,40);
  ellipse(970,400,80,80);
 
 

  
  //third circle
  ellipse(1100, 510, 100, 100);
  ellipse(970, 510, 100, 100);
  ellipse(1100, 620, 100, 100);
  ellipse(970, 620, 100, 100);
 
 
  translate(width/2, 120);
  for (int i = 0; i < am; i++) {
    particles[i].draw();
  }
  for (int i = 0; i < am; i++) {
    particles[i].drawMid();
    particles[i].move();
  }
  
  for(Radar r:radars)
  {
    r.update();
    r.render();
  }
  
    image(img, x, y);

 
  
  
  
  x = lerp(x, mouseX, 0.1);
  y = lerp(y, mouseY, 0.1);
}