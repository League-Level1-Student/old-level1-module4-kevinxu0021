int x;
int x1 = 1920;
int y;
void draw() {
x+=3;
y+=3;
x1-=3;

  background(255,255, 255); 
  fill(0, 0, 0);
  stroke(255, 255, 255);
  ellipse(x, y, 50, 50);
  if(mousePressed == true){
   y-=6; 
  }
  fill(0, 255, 0);
rect(x1, 0, 50, 250);
}
void setup() {
  size(1920, 1080);
}

void mousePressed(){
  
  
  
  
  
  
}
