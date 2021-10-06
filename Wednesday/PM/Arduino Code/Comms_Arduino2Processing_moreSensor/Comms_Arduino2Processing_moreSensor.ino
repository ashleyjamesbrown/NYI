import processing.serial.*;

// read data from arduino to processing  and store it in 3 values

float sensorX = 0;
float sensorY = 0;
float sensorZ = 0;

//---------------------

void setup() {
  size(800, 600);
  background(0);
  setupSerial();
}

//---------------------
void draw() {
  background(0);
  fill(255, 27, 0);
  ellipse(sensorX, sensorY, 100, 100);
 // println(sensorX);
}


//------------------------------------------------------


Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port


void setupSerial() {
  printArray(Serial.list());
  try {
    String portName = Serial.list()[9]; //change the number to suit your board
    myPort = new Serial(this, portName, 9600);  //115200
    println("connected to -->  " +portName);
    myPort.bufferUntil(','); //enables to split the data via a comma which is set in teh arduino code
  } 
  catch (Exception e) {
    println("no device connection found");
  }
}




void serialEvent(Serial myPort) {

  String inString = myPort.readStringUntil(',');
  // split the string into multiple strings
  // where there is a delimter":"

  //println(inString); //data line coming in

  // chop up the line by : into an array to split the data
  String items[] = split(inString, ':');

  printArray(items);

  // if there was more than one string after the split (there will be the text and the data)
  if (items.length > 1) {
    String label = trim(items[0]);
    // remove the ',' off the end
    String val = split(items[1], ',')[0];
    println(val);

    // check what the label was and update the appropriate variable
    if (label.equals("xValue")) {
      println("looks like sensor X   "+val);
      sensorX = float(val);
    } 
    // check what the label was and update the appropriate variable
    if (label.equals("yValue")) {
      println("looks like sensor Y   "+val);
      sensorY= float(val);
    } 

    // check what the label was and update the appropriate variable
    if (label.equals("zValue")) {
      println("looks like sensor Z   "+val);
      sensorZ = float(val);
    }
  }
}
