//2020.3 李育婵 编程基础第四周  《Make It Black》
float m=0.0;
float offset=0.0;
float time = 0.0;
void setup()
{
  size(500, 500);
}


void draw()
{
  thecurve();
  thenoice();
  theline();
  ellipse(random(0, width), random(0, height), 5, 5);
  ellipse(random(width-100, width), random(0, 150), 5, 5);
  fill(0);
  time += 0.01;
  offset += 0.1;
  m+=1;
}
