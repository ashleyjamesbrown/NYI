
int paletteSize = 30;
color col1 = color(255, 204, 0);
color col2 = color(50, 55, 100);
color col3 = color(20, 100, 45);

float radius = 50; // max 50

void setup() {
  size(800, 600);
  noStroke();
  
  fill(255);
  rect(5, paletteSize+20, 790, 570-paletteSize);
  
  fill(col1);
  rect(10, 10, paletteSize, paletteSize);
  fill(col2);
  rect(10+paletteSize+5, 10, paletteSize, paletteSize);
  fill(col3);
  rect(10+2*paletteSize+10, 10, paletteSize, paletteSize);
  
  fill(0);
  ellipse(10+3*paletteSize+30, 25, 10, 10);
  ellipse(10+4*paletteSize+35, 25, 20, 20);
  ellipse(10+5*paletteSize+50, 25, 30, 30);
  
  fill(col1);
  
}

void draw() {

  if (mousePressed==true) {
    
    if(mouseY < (paletteSize+60)){
      
      if(10 <= mouseX && mouseX <= 10+paletteSize && 10 <= mouseY && mouseY <= 10+paletteSize){
        fill(col1);
      } else if(10+paletteSize+5 <= mouseX && mouseX <= 10+2*paletteSize+5 && 10 <= mouseY && mouseY <= 10+paletteSize){
        fill(col2);
      } else if(10+2*paletteSize+10 <= mouseX && mouseX <= 10+3*paletteSize+10 && 10 <= mouseY && mouseY <= 10+paletteSize){
        fill(col3);
      } else if(10+3*paletteSize+15 <= mouseX && mouseX <= 10+4*paletteSize+15 && 10 <= mouseY && mouseY <= 10+paletteSize){
        radius = 10; 
      }  else if(10+4*paletteSize+20 <= mouseX && mouseX <= 10+5*paletteSize+20 && 10 <= mouseY && mouseY <= 10+paletteSize){
        radius = 30; 
      } else if(10+5*paletteSize+25 <= mouseX && mouseX <= 10+6*paletteSize+25 && 10 <= mouseY && mouseY <= 10+paletteSize){
        radius = 50; 
      }
      
    } else {
      for (int n = 0; n < 100; n++) {
  
        float dropletSize = random(10);
        float sprayRadius = random(radius);
        float dropAngle = random(TWO_PI);
  
        ellipse(mouseX + sprayRadius*cos(dropAngle), mouseY + sprayRadius*sin(dropAngle), dropletSize, dropletSize);
      }
    }
  }
}
