void setup(){
  size(800,600);
  background(255,255,255);
}

void draw(){
 
  pushMatrix();
   translate(400,300);
   rotate( radians(mouseX) );
   fill(0,mouseX,mouseY,30);
   rect(0,0,200,200);
  popMatrix();
  
  rect(0,0,100,100);
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
