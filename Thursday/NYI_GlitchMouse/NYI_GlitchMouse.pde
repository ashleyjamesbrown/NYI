// NYI glitch smoosh images with mouse
// ajb


PImage myImage;
PImage glitchImage;
boolean glitching = false;

void setup() {
  size(800, 800);
  myImage = loadImage("tuxcat.jpg");
  image(myImage,0,0,800,800);
  glitchImage = new PImage(); //glitchImage is a buffer of pixels that we get
}

void draw() { 
  if(glitching){
   image(glitchImage,mouseX,mouseY); //show the contents of the buffer of pixels
  } else {
    glitchImage = get(mouseX,mouseY,100,100);
  }
}


void mousePressed(){
  glitching = !glitching;
}
