
// -------------------
//     ART NOODLER  
// -------------------
// auto project generator

//String wordsFile = "words-music-02.txt";
String wordsFile = "words-art.txt";


StringList listA = new StringList();
StringList listB = new StringList();
StringList listC = new StringList();
StringList listD = new StringList();
StringList listE = new StringList();
StringList listF = new StringList();

String[] lines;
String title = "design-bot";

PFont font;  

int pointerA = 0;
int pointerB = 0;
int pointerC = 0;
int pointerD = 0;
int pointerE = 0;
int pointerF = 0;

color c1, c2;

boolean writeList = false;
PrintWriter output;

float noodlePos = 0;
float noodleSpeed = 0.4;
float noodleRad = 200;

void setup() {

  colorMode(HSB, 1.0, 1.0, 1.0);

  //size(1000, 800);
  fullScreen();
  smooth();

  c1 = color(random(0.3, 1), 0.5, 1);
  randomSeed(millis());
  c2 = color(random(0.3, 1), 0.5, 1);


  font = loadFont("Avenir-Heavy-48.vlw");
  textFont(font, 48);

  loadTextFile();

  title = "pool noodler - improv noodle score";

  randomSeed(millis());
  listA.shuffle();
  randomSeed(10+millis());
  listB.shuffle(); 
  randomSeed(10 + millis());
  listC.shuffle();
  randomSeed(10+ millis());
  listD.shuffle();
  listE.shuffle(); 
  listF.shuffle();
}


void draw() {

  background(0, 0, 0.0005);
  textFont(font, 48);
  fill(0.17, 0.5, 1);
  text("life model:", 100, height/2 - 150);
  fill(c1);
  text(listA.get(pointerA), 100, height/2 - 75);
  text(listB.get(pointerB), 100, height/2);
  text(listC.get(pointerC), 100, height/2 + 75);

  fill(0.17, 0.5, 1);
  text("artists:", 100 + width*0.5, height/2 - 150);
  fill(c2);
  text(listD.get(pointerD), 100 + width*0.5, height/2 - 75);
  text(listE.get(pointerE), 100 + width*0.5, height/2);
  text(listF.get(pointerF), 100 + width*0.5, height/2 + 75);

  textFont(font, 24);
  fill(100);
  text(title, 100, height-50);

  noodlePos+=noodleSpeed;
  if (noodlePos > width) {
    noodlePos = 0;
    generateIdea();
  }
  float yOff = 150.0*noise(frameCount*0.01);
  noStroke();
  fill(0.17, 0.5, 1);
  rect(0, yOff + height * 0.8 - noodleRad*0.5, noodlePos, noodleRad*0.75);
  fill(0.17, 0.5, 0.85);
  rect(0, yOff + height * 0.8 + noodleRad*0.25, noodlePos, noodleRad*0.25);
  fill(0.17, 0.4, 0.9);
  ellipse(noodlePos, yOff + height * 0.8, noodleRad*0.5, noodleRad);
  fill(0.17, 0.4, 0.8);
  ellipse(noodlePos, yOff + height * 0.8, noodleRad*0.15, noodleRad*0.3);
}



void keyPressed() {

  //println(key);

  //background(0.1, 0, 1.0);

  float r = random(0.3, 0.8);

  c1 = color(r, 0.5, 1.0);
  c2 = color(r+0.2, 0.5, 1.0);

  

  if (key == 32) {
    // spacebar
    noodlePos = 0;
    generateIdea();
  }
}


void generateIdea() {
  
  noodleRad = random(200, 400);
  noodleSpeed = random(0.2, 0.4);

  pointerA++;
  if (pointerA >= listA.size()) 
  {
    pointerA = 0;
    listA.shuffle();
  }

  pointerB++;
  if (pointerB >= listB.size()) 
  {
    pointerB = 0;
    listA.shuffle();
  }

  pointerC++;
  if (pointerC >= listC.size()) { 
    pointerC = 0;
    listC.shuffle();
  }

  pointerD++;
  if (pointerD >= listD.size()) 
  {
    pointerD = 0;
    listD.shuffle();
  }

  pointerE++;
  if (pointerE >= listE.size()) 
  {
    pointerE = 0;
    listE.shuffle();
  }

  pointerF++;
  if (pointerF >= listF.size()) { 
    pointerF = 0;
    listF.shuffle();
  }
}



void writeIdea() {
}





void loadTextFile() {

  // load text file
  lines = loadStrings(wordsFile);

  int currentList = 0;

  println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
    if (lines[i].equals("-A-")) {
      currentList = 1;
    } else if (lines[i].equals("-B-")) {
      currentList = 2;
    } else if (lines[i].equals("-C-")) {
      currentList = 3;
    } else if (lines[i].equals("-D-")) {
      currentList = 4;
    } else if (lines[i].equals("-E-")) {
      currentList = 5;
    } else if (lines[i].equals("-F-")) {
      currentList = 6;
    } else if (!lines[i].equals("")) {
      switch(currentList) {
      case 1:
        listA.append(lines[i]);
        break;
      case 2:
        listB.append(lines[i]);
        break;
      case 3:
        listC.append(lines[i]);
        break;
      case 4:
        listD.append(lines[i]);
        break;
      case 5:
        listE.append(lines[i]);
        break;
      case 6:
        listF.append(lines[i]);
        break;
      }
    }
  }
}
