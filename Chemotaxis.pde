Bacteria[] kosh;
 void setup()   
{
  size(800, 800);
  kosh = new Bacteria[30];
  for(int i = 0; i < kosh.length; i++)
  {
    kosh[i] = new Bacteria(400, 400);
  }
}
 void draw()   
 {
   background(255);
   for(int i = 0; i < kosh.length; i++)
   {
     kosh[i].show();
     kosh[i].move();
   }  
  }  
class Bacteria    
{     
  int myY;
  int myX;
  int bacteriaColor;
  Bacteria(int x, int y) //constructor
  {
    myX = x;
    myY= y;
    fill(1);
    bacteriaColor = 256;
  }
  void move() {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show() {
    ellipse(myX, myY,50,50);
  }
}
