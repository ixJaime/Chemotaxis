Bacteria bob;

void setup()   
{     
  size(500, 500);
  bob = new Bacteria(20, 20);
}   

void draw()   
{    
  background(0);
  bob.move();
  bob.show();
}  

class Bacteria
{     
  int x, y, a, b, c;
  Bacteria(int x, int y) 
  {
    x = 200;
    y = 300;
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
  }


  void move() 
  {
    x = x + (int)(Math.random()*5)-1;
    y = y + (int)(Math.random()*5)-1;
  }

  void show() 
  {
    fill(a, b, c);
    ellipse(x, y, 10, 10);
  }
}    