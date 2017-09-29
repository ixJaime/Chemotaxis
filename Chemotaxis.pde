Bacteria [] bob;
float x;
float y;
float moveSpeed = 0.07;

void setup()   
{     
  size(500, 500);
  bob = new Bacteria[50];
  for (int i =0; i<bob.length; i++) 
  {
    bob[i]=new Bacteria();
  }
}   

void draw()   
{     
  background(0);
  for (int i=0; i<bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}  

class Bacteria
{     
  int x, y, a, b, c;
  Bacteria() 
  {
    x = (int)(Math.random()*501);
    y = (int)(Math.random()*501);
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
  }


  void move() 
  {
    x = x+ (int)(Math.random()*10);
    y = y+(int)(Math.random()*5);

if(mousePressed) {
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
    float targetX = mouseX;
    float dx = targetX - x;
    x+=dx *moveSpeed;

    float targetY = mouseY;
    float dy = targetY - y;
    y+=dy *moveSpeed;
    
  }

  void show() 
  {
    fill(a, b, c);
    ellipse(x, y, 20, 20);
  }
}    