

void setup() {
  size(800, 600);
}

void draw() {

  noStroke();
  if (mousePressed==true) {
    ellipse(mouseX, mouseY, 10, 10);
  }
}
