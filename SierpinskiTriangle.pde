public void setup()
{
  size(300,300);
  background(51, 204, 255);
}
public void draw()
{
  triangle(0,300,300,300,150,0);
  sierpinski(0,300,300);
}

public void sierpinski(int x, int y, int len) 
{
  if(len < 5){
    triangle(x,y,x+len,y,x+len/2,y-len);
    fill(255, 204, 0);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  
  }
}
