

void setup() {
  size(800, 600);
  background(200);
}

void draw() {

  noStroke();
  if (mousePressed==true) {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 25, 25);
  } else {
    fill(200);
    ellipse(mouseX, mouseY, 25, 25);
  }
}
