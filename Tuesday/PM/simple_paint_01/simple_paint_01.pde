// --------------------------
//      SIMPLE PAINT v0.1
// --------------------------
//
// Simple drawing tool examples
// with pen down, erase canvas, and instructions 

void setup() {

  // change size, A4 portrait
  size(600, 800);

  // set background white
  background(255);

  // draw the instructions to the screen
  drawInstructions();
}

void draw() {

  // turn off stroke
  noStroke();

  // set fill to black
  fill(0);

  // draw a circle at the mouse, with 5px diameter if mouse is pressed
  if (mousePressed) {
    ellipse(mouseX, mouseY, 5, 5);
  }

  // if a key is pressed, and it's the 'e' key, then set background to white
  if ((keyPressed)&&(key =='e')) {
    //set background white
    background(255);
    //drawinstructions
    drawInstructions();
  }
}

void drawInstructions() {
  
  // this function draws the instructions on the screen
  // I've put it in a function because I needed to use it twice! (setup and clear screen)
  // better to do this than copy and paste code

  // put some instructions on screen
  fill(0);
  text("Simple Paint v0.1", 10, 20);
  text("--------------", 10, 30);
  text("press mouse to draw line\nmove mouse slowly to create a solid line\nor scrub quickly for a dot fill\npress e to erase", 120, 20);
}
