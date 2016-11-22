void moonColour()
{
  noStroke();
      colorMode(RGB, 1);
      fill(0.4);
}
void moon()
{
  
  translate(1000, 600);
  // Set the specular color of lights that follow
  lightSpecular(1, 1, 1);
  directionalLight(0.8, 0.8, 0.8, 0, 0, -1);
  float s = mouseX / float(width);
  specular(s, s, s);
  sphere(80);
}