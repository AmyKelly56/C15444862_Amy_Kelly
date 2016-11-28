ControlP5 cp51;
Accordion accordion;
Accordion accordion1;
color cc = color(0, 160, 100);

void gui() 
{
  smooth();
  
  cp51 = new ControlP5(this);
  Group g1 = cp5.addGroup("Control1")
                .setHeight(27)
                .setBackgroundColor(color(0, #0ACB35))
                .setBackgroundHeight(250)
                ;
  
  cp5.addRadioButton("radio")
     .setPosition(10,40)
     .setItemWidth(40)
     .setItemHeight(40)
     .addItem("Black", 0)
     .addItem("Red", 1)
     .addItem("Green", 2)
     .addItem("Blue", 3)
     .addItem("Grey", 4)
     .setColorLabel(color(255))
     .activate(2)
     .moveTo(g1)
     ;
     
  Group g2 = cp5.addGroup("Control2")
             .setHeight(27)
             .setBackgroundColor(color(0, #0ACB35))
             .setBackgroundHeight(150)
             ;
     
  cp5.addSlider("Speed")
     .setPosition(10,40)
     .setSize(100,20)
     .setRange(100,500)
     .setValue(384)
     .moveTo(g2)
     ;
     
  cp5.addSlider("Throttle")
     .setPosition(10,70)
     .setSize(100,20)
     .setRange(100,500)
     .setValue(178)
     .moveTo(g2)
     ;
   
  accordion = cp5.addAccordion("acc")
                 .setPosition(130,0)
                 .setWidth(200)
                 .addItem(g1)
                 ;
                
  accordion.setCollapseMode(Accordion.MULTI);
  
  accordion1 = cp5.addAccordion("acc1")
                  .setPosition(950, 0)
                  .setWidth(200)
                  .addItem(g2)
                  ;
  
  accordion1.setCollapseMode(Accordion.MULTI);                   
}
  
void radio(int theC) 
{
  switch(theC) 
  {
    case(0):cc=color(0,200);break;
    case(1):cc=color(255,0,0,200);break;
    case(2):cc=color(#0ACB35);break;
    case(3):cc=color(0, 128, 255,200);break;
    case(4):cc=color(#797373);break;
  }
}

//circles to change with drop down
void drawCircles() 
{
  fill(cc);
  noStroke();
  ellipse(55, 200, 40, 40);
  ellipse(55, 250, 40, 40);
  ellipse(55, 300, 40, 40);
  ellipse(55, 350, 40, 40);
}

ControlP5 cp52, cp54;
CheckBox checkbox;
int myColorBackground;
 
void Toggle() 
{
 cp52 = new ControlP5(this);
 checkbox = cp5.addCheckBox("checkBox")
                .setPosition(530, 670)
                .setSize(40, 40)
                .setItemsPerRow(2)
                .setSpacingColumn(140)
                .setSpacingRow(20)
                .addItem("0", 0)
                .addItem("50", 50)
               ;
} 