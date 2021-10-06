void setup(){
  size(800,600);
  background(255,255,255);
}

void draw(){
  
  if (mousePressed){
    fill(255,0,255,90);
    //ellipse(mouseX,mouseY,100,100);
    textSize(72);
    text("NYI3",mouseX,mouseY);
  }
  
}

void keyPressed(){
  
  if (key=='s'){
   saveFrame("mypic3-###.jpg");
  }
  else
  if (key==' '){
    background(255,255,255);
  }
  
}
