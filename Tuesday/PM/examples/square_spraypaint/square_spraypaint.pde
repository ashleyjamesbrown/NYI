

void setup() {
  size(800, 600);
}

void draw() {


  if (mousePressed==true) {

    int sprayRadius = 50;


    for (int n = 0; n < 100; n++) {

      float dropletSize = random(10);

      noStroke();
      fill(0, 0, 0, 100);
      ellipse(mouseX + random(-sprayRadius, sprayRadius), mouseY + random(-sprayRadius, sprayRadius), dropletSize, dropletSize);
    }
  }
}
