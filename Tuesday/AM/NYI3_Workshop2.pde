void setup(){
  size(800,600);
  background(255,255,255);
}

void draw(){
  float x = random(1,800);
  float y = random(1,600);
  float rr = random(0,255);
  float gg = random(0,255);
  stroke(rr,gg,255,30);
  strokeWeight(5);
  fill(rr,gg,255,40);
  line(x,y,mouseX,mouseY);
  ellipse(x,y,100,100);
}

void keyPressed(){
  saveFrame("mypic2-###.jpg");
}
