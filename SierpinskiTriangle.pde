public void setup()
{
  size(300,300);
  background(153, 102, 255);
}
public void draw()
{
  triangle(0,300,300,300,150,0);
  sierpinski(0,300,300);
}

public void sierpinski(int x, int y, int len) 
{
  int r = 255;
  int g = 255;
  int b = 255;
  if(len < 20){
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  
  }
}
