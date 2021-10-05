import processing.video.*;

PImage cat;
int x,y = 0;

Capture cam;


void setup(){
  size(800,600);
  background(255,255,255);
  cat = loadImage("tuxcat.jpg");
  //imageMode(CENTER);
  cam=new Capture(this,720,480);
  cam.start();
}

void draw(){
 //tint(0,255,5);
 //image(cat,mouseX,mouseY,cat.width/8,cat.height/8);
 //image(cat,width-mouseX,mouseY,cat.width/8,cat.height/8);
 if (cam.available() == true) {
    cam.read();
  }
  
 image(cam,x,y, cam.width/2, cam.height/2);
 x+=3;
 
 if (x > width){
   x=0;
   y+=cam.height/2;
 }
 
 if (y> height){
  x=0;
  y=0;
 }
 
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
