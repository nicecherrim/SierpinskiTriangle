public void setup()
{
  size(300,300);
}
public void draw()
{
  sierpinski(25,275,250);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    triangle(x, y, x+len, y, (x+x+len)/2, y-len);
  } else {
    //left corner at (x,y)
    sierpinski(x,y,len/2);
    //right corner
    sierpinski(x+len/2,y,len/2);
    //top
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
