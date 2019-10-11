int rate = 100;

void setup()
{
  size(500, 500);
  frameRate(rate);
}
void draw()
{
  background(0);
  for(int y = 0; y < (height); y += height / 10){
    for(int x = 0; x < (width); x += width /10){
      Die bob = new Die(x, y);
      bob.show();
    }
  }
  rate -= rate / 10;
  rate--;
  if(rate == 1){
    noLoop();
  }else{
    loop();
  }
  frameRate(rate);
}
void mousePressed()
{
  rate = 100;
  frameRate(rate);
  redraw();
}
class Die //models one single dice cube
{
  int value, myX, myY;

  Die(int x, int y) //constructor
  {
    value = (int)(Math.random() * 6) + 1;
    myX = x;
    myY = y;
  }
  void roll()
  {
  }
  void show()
  {
    fill(255);
    rect(myX, myY, width / 10, height / 10, height / 100);
    fill(0);
    if (value == 1 || value == 3 || value == 5) {
      ellipse(myX + (width / 20), myY + (height / 20), height / 70, width / 70);
    }
    if (value > 1) {
      ellipse(myX + (width / 70), myY + (height / 70), width / 70, height / 70);
      ellipse(myX + (6 * width / 70), myY + (6 * height / 70), width / 70, height / 70);
    }
    if (value > 3) {
      ellipse(myX + (6 * width / 70), myY + (height / 70), width / 70, height / 70);
      ellipse(myX + (width / 70), myY + (6 * height / 70), width / 70, height / 70);
    }
    if (value == 6) {
      ellipse(myX + (6 * width / 70), myY + (height / 20), width / 70, height / 70);
      ellipse(myX + (width / 70), myY + (height / 20), width / 70, height / 70);
    }
  }
}
