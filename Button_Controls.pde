boolean button = false;

int x = 150;
int y = 600;
int w = 100;
int h = 75;

void button() 
{
  if (button) 
  {
    fill(random(255), random(255), random(255));
    rect(270, 600, 100, 75);
    stroke(0);
  } 
  else 
  {
    fill(0);
    stroke(255);
  }
  
  fill(175);
  rect(x,y,w,h);
}

void mousePressed() 
{
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) 
  {
    button = !button;
  }  
}

ControlP5 cp52;
CheckBox checkbox;
int myColorBackground;

void Toggle() 
{
  fullScreen();
  smooth();
  
  cp52 = new ControlP5(this);
  checkbox = cp5.addCheckBox("checkBox")
                .setPosition(510, 670)
                .setSize(40, 40)
                .setItemsPerRow(4)
                .setSpacingColumn(30)
                .setSpacingRow(20)
                .addItem("0", 0)
                .addItem("50", 50)
                .addItem("100", 100)
                .addItem("150", 150)
                ;
}

void keyPressed() 
{
  if (key==' ') 
  {
    checkbox.deactivateAll();
  } 
  else 
  {
    for (int i=0;i<6;i++) 
    {
      if (keyCode==(48 + i))
      { 
        checkbox.toggle(i);
      }
    }
  }
}