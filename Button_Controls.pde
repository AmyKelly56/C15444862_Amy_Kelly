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