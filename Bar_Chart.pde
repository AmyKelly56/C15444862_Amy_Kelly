class BarChart
{
  String name;
  Float mag;
  color c;
  
  BarChart(TableRow row)
  {
    this.name = row.getString("name");
    this.mag = row.getFloat("magnitude"); 
    c = color(random(255), random(255), random(255));
  }
  
  void drawBar(float x)
  {
    fill(c);
    rect(x, height-100, 20,-map(mag, 0, 8.2, 0, 100));
    textSize(10);
    text(name, x, height-80);
    text(mag, x, height-112 -(map(mag, 0, 8.2, 0, 100) -10));
  }  
} 

void createbarChart()
{
  for(TableRow row:Galaxies.rows())
  {
    BarChart b = new BarChart(row);
    bars.add(b);
  }
}

void drawBarChart()
{
  int x = 100;
  for(BarChart b: bars)
  {
    b.drawBar(x);
    
    x += 60; 
  }
}