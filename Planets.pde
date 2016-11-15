PImage neptune;
PImage earth;
PImage pluto;
PImage mars;
PImage saturn;
PImage Uranus;
PImage venus;

void loadImages()
{
  neptune= loadImage ("neptune.png"); 
  earth = loadImage ("earth.jpg"); 
  pluto = loadImage ("pluto.jpg"); 
  mars = loadImage ("mars.jpg"); 
  saturn = loadImage ("saturn.png"); 
  Uranus = loadImage ("Uranus.jpg"); 
  venus = loadImage ("venus.jpg");
   
}

void drawPlanets()
{
  image(neptune, 100, 80, 100, 100);
  image(earth, -300, 80, 200, 200);
  image(pluto, 260,50, 50, 50);
  image(mars, 400, 0, 300, 225);
  image(saturn, 20, 400, 215, 215);
  image(Uranus, 500, 400, 120, 120);
  image(venus, -200, 500, 100, 10);
}