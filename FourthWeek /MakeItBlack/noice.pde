float times = 0.0;//形成动画
float noicefade;
void thenoice()
{

  noiseDetail(1);//描述noise复杂程度

  //两个循环 历遍所有像素点
  for (int y =0; y<height; y+=200)
  {  
    for (int x=0; x<width; x+=200) 
    {
      float noiseX=(float)x*0.02; 
      float noiseY=(float)y*0.02;
      float angle =noise(noiseX, noiseY, time)*TWO_PI;
      stroke(0);
      pushMatrix();
      translate(x, y);
      rotate(angle); 
      line(0, 0, 200, 200);
      popMatrix();
    }
  }
  times += 0.01;
}
