Die bob = new Die(100, 100);
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(197);
  int sum = 0;
  for (int y = 20; y < 400; y = y + 60) {
    for (int x = 20; x < 450; x = x + 60) {
      Die bob = new Die(x, y);
      bob.show();
      sum = sum + bob.myDots;
    }
  }
  text("The sum is: "+ sum, 200, 475);
}
void mousePressed()
{
  redraw();
}


class Die //models one single dice cube
{
  int myDots, myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    myDots = (int)(Math.random()*6)+1;
  }
  void roll()
  {
  }
  void show()
  {
    rect(myX, myY, 50, 50);
    if (myDots == 1) {
      ellipse(myX +25, myY + 25, 5, 5);
    }
    if (myDots == 2) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    }
    if (myDots == 3) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    }
    if (myDots == 4) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
    }
    if (myDots == 5) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    if (myDots == 6) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 25, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    }
  }
}
