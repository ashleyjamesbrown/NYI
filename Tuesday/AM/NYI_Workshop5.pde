PImage cat;

void setup(){
  size(800,600);
  background(255,255,255);
  cat = loadImage("tuxcat.jpg");
  
}

void draw(){
 image(cat,0,0, cam.width/2, cam.height/2);
 
}

void keyPressed(){
  
  if (key=='s'){
   saveFrame("mypic4-###.jpg");
  }
  else
  if (key==' '){
    background(255,255,255);
  }
  
}
