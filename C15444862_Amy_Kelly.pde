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

void setup() 
{
  size(1200, 700);
  noStroke();
  smooth();
  
 
  particles = new Particle[am];
  for (int i = 0; i < am; i++) {
    particles[i] = new Particle(new PVector(0, 0), i);
  }
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
  fill(0,5); noStroke();rect(0,0,width,height);stroke(#0C77AF);an+=0.01;
  line(width/2,height/2, 250+cos(an)*200, 250+sin(an)*200);
  if(random(10)<1){
    //dots on radar
    fill(#FAAD12);
    float r=random(10,200);
    ellipse(250+cos(an)*r,250+sin(an)*r,4,4);
  }
  noFill();
  stroke(#0C77AF);
  ellipse(970,400,20,20);
  ellipse(970,400,40,40);
  ellipse(970,400,80,80);
 
  line(970,0,250,100);
  line(970,255,100,255);

  
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
}