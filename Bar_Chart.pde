ControlP5 cp5;
Chart myChart;

void BarChart() 
{
 cp5 = new ControlP5(this);
 myChart = cp5.addChart("hello")
           .setPosition(100, 550)
           .setSize(150, 150)
           .setRange(-20, 20)
           .setView(Chart.BAR) 
           ;

  myChart.getColor().setBackground(color(0));

  myChart.addDataSet("world");
  myChart.setColors("world", color(#1AC4FF),color(0, 0, 255));
  myChart.setData("world", new float[4]);

  myChart.setStrokeWeight(1.5);

  myChart.addDataSet("earth");
  myChart.setColors("earth", color(#9FDDF2), color(0, 0, 0));
  myChart.updateData("earth", 1, 2, 10, 3);

}

void drawBarChart() 
{
  myChart.unshift("world", (sin(frameCount*0.01)*10));
  myChart.push("earth", (sin(frameCount*0.1)*10));
}