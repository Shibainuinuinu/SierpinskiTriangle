public void setup()
{
  size(500,500);
  background(0);
}
public void draw()
{
  background(0);
  //frameRate(30);
  noFill();
  stroke(255);
  sierpinski(mouseX-400/2, mouseY+400/4, 400);
  //sierpinski(125, 375, 250);
}
public void mouseDragged()//optional
{
  
}

public void sierpinski(int x, int y, int len)
{
  if (len<=10)
    triangle(x, y, x+len/2, y-len, x+len, y);
  else{
    stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
