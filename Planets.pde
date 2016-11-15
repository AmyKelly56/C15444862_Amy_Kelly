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
  image(neptune, width/2, height/2, 100, 100);
  image(earth, width/2, height/2,  200, 200);
  image(pluto, width/2, height/2, 50, 50);
  image(mars, width/2, height/2, 300, 225);
  image(saturn, width/2, height/2, 215, 215);
  image(Uranus, width/2, height/2, 120, 120);
  image(venus, width/2, height/2, 100, 10);
}