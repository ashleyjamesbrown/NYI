

color pen;

void setup() {
  size(800, 600);
}

void draw() {

  noStroke();
  if (mousePressed==true) {
    fill(pen);
    ellipse(mouseX, mouseY, 10, 10);
  }
}


void keyPressed() {
  if (key == '1') {
    pen = color(255, 0, 0);
  } 
  if (key == '2') {
    pen = color(0, 255, 0);
  } 
  if (key == '3') {
    pen = color(0, 0, 255);
  }
  if (key == 'r') {
    pen = color(random(255), random(255), random(255));
  }
}
