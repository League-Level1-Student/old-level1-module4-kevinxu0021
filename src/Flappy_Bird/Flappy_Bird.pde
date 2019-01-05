int x;
int x1 = 1920;
int x2 = 1920;
int y = 540;
int height = 250;
int height2 = 250;
void draw() {
  x=200;
  y+=3;
  x1-=3;
  x2-=3;

  background(0, 0, 0); 

  fill(#FFF300);
  stroke(255, 255, 255);
  ellipse(x, y, 50, 50);
  if (mousePressed == true) {
    y-=6;
  }

  teleportPipes();
  fill(0, 255, 0);
  rect(x1, 0, 50, height);

  teleportPipes2();
  fill(0, 255, 0);
  rect(x2, 1080-height2, 50, height2);
  
boolean pipes = intersectsPipes();
if(pipes == true){
    exit();
  }
}
void setup() {
  size(1920, 1080);
}

void mousePressed() {
}

void teleportPipes() {
  if (x1 < 0) {
    height = (int)random(100, 400);
    x1 = 1920;
  }
}

void teleportPipes2() {
  if (x2 < 0) {
    height2 = (int)random(100, 400);
    x2 = 1920;
  }
  
}

boolean intersectsPipes() { 
     if (y < height && x > x1 && x < (x1+50)){
          return true; }
     else if (y>1080-height2 && x > x1 && x < (x1+50)) {
          return true; }
     else { return false; }
}
