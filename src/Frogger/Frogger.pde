int frogX;
int frogY;
Car car1 = new Car();
int car1X;
int car1Y;
int car1Size;
Car car2 = new Car();
int car2X;
int car2Y;
int car2Size;
Car car3 = new Car();
int car3X;
int car3Y;
int car3Size;
void draw() {
  background (0, 0, 0);

  fill(0, 255, 0);
  ellipse(frogX, frogY, 10, 10);
  keyPressed();
  keepFrogInside();
  
  car1.display(car1X, car1Y, car1Size);
  car2.display(car2X, car2Y, car2Size);
  car3.display(car3X, car3Y, car3Size);
}
void setup() {
  size(400, 400);
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP)
    {
      //Frog Y position goes up
      frogY--;
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down 
      frogY++;
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
      frogX++;
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
      frogX--;
    }
  }
}
void keepFrogInside() {
  if (frogY < 0) {
    frogY = 0;
  }
  if (frogY > 400) {
    frogY = 400;
  }
  if (frogX < 0) {
    frogX = 0;
  }
  if (frogX > 400) {
    frogX = 400;
  }
}

class Car{
 int carX = 0;
 int carY = 0;
 int carSize = 25;
 int carSpeed;
 
Car(){
}
 void display(int x, int y, int size) 
{
      fill(0,255,0);
      rect(x , y, size, 50);
}

}