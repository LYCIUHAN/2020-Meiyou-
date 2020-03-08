void target(float xPos, float yPos, int numRings, int ringsize)

{
  noStroke();
  for (int i=numRings; i>0; i--)
  {
    int size=i*ringsize;
    int gray=i*(255/numRings);
    fill(gray-5, gray+100, gray-5);

    ellipse(xPos, yPos, size, size);

 
    
  }
}

void target2(float xPos, float yPos, int numRings, float ringsize)

{
  noStroke();
  for (int i=numRings; i>0; i--)
  {
    float size=i*ringsize;
    int gray=i*(255/numRings);
   fill(255, gray-50, gray-40);
    ellipse(xPos, yPos, size, size);

 
    
  }
}
