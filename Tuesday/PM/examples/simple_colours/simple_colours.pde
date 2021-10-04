

void setup() {
  size(800, 600);

  // change background colour here!
  // use 0-255 for Red, Green and Blue
  // for example for red use:
  // background(255, 0, 0);
  // or purple add some blue:
  // background(255, 0, 150);
  background(255, 255, 255);
}

void draw() {

  // change the pen colour here
  // use 0-255 for Red, Green and Blue
  // try changing the values and see what you get!
  fill(100, 100, 200);


  if (mousePressed==true) {
    noStroke();
    // try changing the 10 below to another number and see what happens!
    ellipse(mouseX, mouseY, 10, 10);
  }
}
