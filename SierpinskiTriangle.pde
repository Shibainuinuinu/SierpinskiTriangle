public void setup()
{
  size(500,500);
  background(0);
}

int w=0;
int randoColor = color((int)(Math.random()*256), 
                         (int)(Math.random()*256), 
                         (int)(Math.random()*256));
public void draw()
{
  background(0);
  noFill();
   stroke(randoColor);
  sierpinski(250-400/2, 300+400/4, 400);
  if (mousePressed && w<=1500){
    background(0);
    w+=15;
    stroke(randoColor);
    sierpinski(mouseX-400/2, mouseY+400/4, w);
  }
  if (w>1500){
   w=400;  
   randoColor = color((int)(Math.random()*256), 
                         (int)(Math.random()*256), 
                         (int)(Math.random()*256));
  }   
}
public void mouseDragged()//optional
{
  
}

public void sierpinski(int x, int y, int len)
{
  if (len<=10)
    triangle(x, y, x+len/2, y-len, x+len, y);
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
