Accordion accordion;
color cc = color(0, 160, 100);

void gui() 
{
  cp5 = new ControlP5(this);
  
  Group g1 = cp5.addGroup("Control1")
                .setHeight(27)
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(160)
                ;
  
  cp5.addRadioButton("radio")
     .setPosition(10,20)
     .setItemWidth(20)
     .setItemHeight(20)
     .addItem("black", 0)
     .addItem("red", 1)
     .addItem("green", 2)
     .addItem("blue", 3)
     .addItem("grey", 4)
     .setColorLabel(color(255))
     .activate(2)
     .moveTo(g1)
     ;

  Group g2 = cp5.addGroup("Control2")
             
                .setHeight(27)
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(150)
                ;
     
  cp5.addSlider("hello")
     .setPosition(10,20)
     .setSize(100,20)
     .setRange(40,100)
     .setValue(40)
     .moveTo(g2)
     ;
     
  cp5.addSlider("world")
     .setPosition(10,50)
     .setSize(100,20)
     .setRange(40,100)
     .setValue(40)
     .moveTo(g2)
     ;
     
  accordion = cp5.addAccordion("acc")
                 .setPosition(200,0)
                 .setWidth(200)
                 .addItem(g1)
                 ;
 
  accordion.setCollapseMode(Accordion.MULTI);
  
}
  
void radio(int theC) 
{
  switch(theC) 
  {
    case(0):cc=color(0,200);break;
    case(1):cc=color(255,0,0,200);break;
    case(2):cc=color(0, 200, 140,200);break;
    case(3):cc=color(0, 128, 255,200);break;
    case(4):cc=color(#797373);break;
  }
}

void drawCircles() 
{
  fill(cc);
  ellipse(55, 200, 40, 40);
  ellipse(55, 250, 40, 40);
  ellipse(55, 300, 40, 40);
  ellipse(55, 350, 40, 40);

}