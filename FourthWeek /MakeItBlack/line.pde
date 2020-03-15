float sinValue=0.0;


void theline()
{
  float yPos= sin (sinValue)*250;
  float lineWidth = sin(sinValue)*100.0;

  println(yPos);
  stroke(0);
  line(width/2-lineWidth, height/2+yPos, width+lineWidth, height+yPos);
  line(width/2-lineWidth, height/2+yPos, width/2+lineWidth, height/2+yPos);
  line(width-lineWidth, height+yPos, width+lineWidth, height+yPos);
  line(width/2+lineWidth, height/2-yPos, width+lineWidth, height+yPos);
  line(width/2+lineWidth, height-yPos, width-lineWidth, height/2-yPos);
  sinValue += 0.05;
}
