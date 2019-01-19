int frogX;
int frogY;

Car car1 = new Car(36, 234, 50, 1);
Car car2 = new Car(25, 57, 50, 4);
Car car3 = new Car(65, 152, 50, -2);

void draw() {
  background (0, 0, 0);

  fill(0, 255, 0);
  ellipse(frogX, frogY, 10, 10);
  keyPressed();
  keepFrogInside();

  car1.display();
  car2.display();
  car3.display();

  car1.moveCar();
  car2.moveCar();
  car3.moveCar();

  boolean boolean1 = intersects(car1);
  boolean boolean2 = intersects(car2);
  boolean boolean3 = intersects(car3);

  if (boolean1 == true) {
    frogX = 0;
    frogY = 0;
  } else if (boolean2 == true) {
    frogX = 0;
    frogY = 0;
  } else if (boolean3 == true) {
    frogX = 0;
    frogY = 0;
  }
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

class Car {
  int carX = 0;
  int carY = 0;
  int carSize = 25;
  int carSpeed;

  Car(int x, int y, int size, int speed) {
    this.carX = x;
    this.carY = y;
    this.carSize = size;
    this.carSpeed = speed;
  }
  void display() {
    fill(0, 255, 0);
    rect(carX, carY, carSize, 50);
  }
  void moveCar() {
    carX-=carSpeed;
    if (carX<=0) {
      carX = width;
    } else if (carX>=width) {
      carX = 0;
    }
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getSize() {
    return carSize;
  }
}
boolean intersects(Car car) {
  if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
  {
    return true;
  } else 
  {
    return false;
  }
}
