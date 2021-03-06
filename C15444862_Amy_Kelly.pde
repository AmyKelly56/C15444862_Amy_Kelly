/* 
C15444982 - Amy Kelly
OOP Assignment 1
*/

import ddf.minim.*;
import controlP5.*;

String gameState;
String tx = "System Loaded";
Boolean textPopup = true;
Boolean mouseClickable = false;

AudioPlayer Space;
Minim minim;

Table Galaxies;
ArrayList <BarChart> bars = new ArrayList<BarChart>();

void setup() 
{
  fullScreen(P3D);
  frameRate(50);
  
  Galaxies = loadTable("Galaxies.csv", "header");
  createbarChart();
  
  minim = new Minim(this);
  Space = minim.loadFile("contact.wav");
  Space.play();
  
  red = new Regler(width/2, 600);
  green = new Regler(width/2, 630);
  blue = new Regler(width/2, 660);

  for (int i = 0; i < am; i++) 
  {
    particles[i] = new Particle(new PVector(0, 0), i);
  }

  gameState = "Open";
}

void draw() 
{
  background(30);
  if (gameState == "Open")
  {
    background(0);

    pushMatrix();
    translate(width/2, height/2);

    for (int i = 0; i < am; i++) 
    {
      particles[i].drawpart();
    }
    for (int i = 0; i < am; i++) 
    {
      particles[i].drawMid();
      particles[i].move();
    }
    popMatrix();
  }
  timer();

  if (timeAccumulator >= 35)
  {
    mouseClickable = true;
    if (textPopup == true )    
    {
      fill(255);
      textSize(40);
      textAlign(CENTER);
      text(tx, width/2, height/2);
    }
  }
  if (textPopup == true && mousePressed == true && mouseClickable == true)
  {
    gameState = "Main";
    textPopup = false;
  } 
  else if (gameState == "Main")
  {
    background(0);
    frameRate(20);
    stars();
    drawStar();
     
    //spaceship outlines
    stroke(#0ACB35);
    strokeWeight(3);
    fill(0);
    arc(width/2, 55, 500, 100, 0, PI);
    line(55, 55, 390, 55);
    line(1200, 55, 890, 55);
    line(55, 55, 55, 180);
    line(55, 370, 55, 500);
    line(1200, 55, 1200, 200);
    rect(1150, 200, 100, 100);
    line(1200, 300, 1200, 500);
    line(55, 500, 390, 500);
    line(1200, 500, 890, 500);
    pushMatrix();
    translate(width/2, height/2+100);
    rotate(radians(180));
    arc(0, 0, 500, 200, 0, PI);
    popMatrix();

    line(55, 530, 390, 530);
    line(1200, 530, 890, 530);
    line(55, 530, 55, 730);
    line(1200, 530, 1200, 730);
    line(55, 730, 1200, 730);
    fill(0);
    arc(width/2, 530, 500, 220, 0, PI);
    strokeWeight(7);
    rect(975, 560, 140, 140);

    pushMatrix();
    drawGalaxy();
    popMatrix();
    pushMatrix();
    drawTrack();
    popMatrix();
    drawCircle();
    drawlever();
    drawEdge();
    drawTri();
    drawClock();
    drawBarChart();
    gui();
    drawCircles();
    Toggle();
    drawPie();
  }
}