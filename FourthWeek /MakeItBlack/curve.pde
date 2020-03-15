void thecurve() 
{
  noFill();
  stroke(0);

  float r=200.0;

  for (float a=0.0; a<TWO_PI; a+=0.2)
  {
    float x=width/2+cos(a+offset)*r;
    float y=height/2+sin(a+offset)*r;

    point(a*30.0, y); 
    point(x, y);
    ellipse(x, y, 3, 3);
    ellipse(x, a*30.0, 3, 3);
    ellipse(x+m, a*30.0+m, 3, 3);
  }
}
