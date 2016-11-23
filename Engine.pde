/*ArrayList corners = new ArrayList();
PVector[] points;
float angle = 120, shapeSize = 80;

class Corner {
  PVector loc, vel, nextLoc;
  int speed, index;

  Corner(float s) {
    speed = 2;
    index = 0;
    
    loc = points[index].get();
    nextLoc = loc.get();
    changeVelocity(nextLoc);
  }
  
  void drawTri(){
 
  points = new PVector[int(360/angle)+1];

  for (int i = 0; i < 360; i+=angle) 
  {
    int angleToIndex = int(i/angle);
    points[angleToIndex] = new PVector(110+sin(radians(i+180))*shapeSize, height-130+cos(radians(i+180))*shapeSize);
  }
 
  if (corners.size() < 40 && (frameCount%=3)==0) corners.add(new Corner(90));
  stroke(#0ACB35);
  strokeWeight(10);
  
  beginShape();
  for(int i = 0; i < int(360/angle); i++)
  {
    vertex(points[i].x, points[i].y); 
  }
  endShape(CLOSE);
  stroke(30);
  strokeWeight(5);
  beginShape();
  
  for (int i = 0; i < corners.size(); i++) 
  {
    Corner p = (Corner) corners.get(i);
    vertex(p.loc.x, p.loc.y);
    p.move();
  }
  endShape();
}

  void move() 
  {
    if (PVector.dist(loc, nextLoc) < speed) 
    {
      nextLoc = points[int(index++%(360/angle))];
      changeVelocity(nextLoc);
    }
    loc.add(vel); 
  }

  void changeVelocity(PVector l) 
  {
    
    vel = new PVector(l.x-loc.x, l.y-loc.y);
    vel.normalize();
    vel.mult(speed);
  }
}

*/