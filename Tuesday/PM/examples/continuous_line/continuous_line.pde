

int lastX;
int lastY;

void setup() {
  size(800, 600);
}

void draw() {

  if (mousePressed) {
    line(lastX, lastY, mouseX, mouseY);
  }
  
  lastX = mouseX;
  lastY = mouseY;
}
