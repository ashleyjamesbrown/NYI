

void setup() {
  size(800, 600);
}

void draw() {

  if (mousePressed==true) {

    for (int n = 0; n < 100; n++) {

      float dropletSize = random(10);
      float sprayRadius = random(50);
      float dropAngle = random(TWO_PI);

      noStroke();
      fill(0, 0, 0, 30);
      ellipse(mouseX + sprayRadius*cos(dropAngle), mouseY + sprayRadius*sin(dropAngle), dropletSize, dropletSize);
    }
  }
}
