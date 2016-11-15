PImage neptune;
PImage earth;
PImage pluto;
PImage mars;
PImage saturn;
PImage Uranus;
PImage venus;

void loadImages()
{
  neptune= loadImage ("neptune.png"); //neptune texture
  earth = loadImage ("earth.jpg"); //earth texture
  pluto = loadImage ("pluto.jpg"); //pluto texture
  mars = loadImage ("mars.jpg"); //mars texture
  saturn = loadImage ("saturn.png"); //saturn texture
  Uranus = loadImage ("Uranus.jpg"); //uranus texture
  venus = loadImage ("venus.jpg"); //venus texture
   
}

void drawPlanets()
{
  //draws planets 
  image(neptune, 0, 10, 300, 300);
  image(earth, 270, 220, 200, 200);
  image(pluto, 260,50, 50, 50);
  image(mars, 400, 0, 300, 225);
  image(saturn, 20, 400, 215, 215);
  image(Uranus, 500, 400, 120, 120);
  image(venus, 300, 500, 190, 190);
}