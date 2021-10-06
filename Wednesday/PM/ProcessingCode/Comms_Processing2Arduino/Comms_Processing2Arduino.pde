// 1026 mapa
// ashley james brown
// super super basic arduino to processing send data


import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;        // Data send to the serial port

void setup() {
  size(400, 200);

  printArray(Serial.list());// prints all connected serial devices.
  //check the list and select teh arduino
  String portName = Serial.list()[6]; // whatevr the number
  myPort = new Serial(this, portName, 9600); //set the serial rate

  fill(255, 0, 0);
}

void draw() {
  background(255);
  rect(50, 50, 100, 100);
}


void mousePressed() {
  fill(0, 255, 0);                  
  myPort.write('Y'); 
  myPort.write('\n'); 
}

void mouseReleased() {
  fill(255, 0, 0);                     
  myPort.write('N');
  myPort.write('\n'); 
}




// arduino code below just in case

//// 1026 mapa
//// ashley james brown
//// simple simple processing to arduino comms

//char val; // Data received from the serial port
//int ledPin = 13; // Set the pin to digital I/O 4

//void setup() {
//  pinMode(ledPin, OUTPUT); // Set pin as OUTPUT
//  Serial.begin(9600); // Start serial communication at 9600 bps
//}

//void loop() {

//  if (val == 'Y') { // If H was received
//    digitalWrite(ledPin, HIGH); // turn the LED on
//  } else {
//    digitalWrite(ledPin, LOW); // Otherwise turn it OFF
//  }
//  delay(100); // Wait 100 milliseconds for next reading
//}



//void serialEvent() {
//  while (Serial.available()) { // If data is available to read,
//    val = Serial.read(); // read it and store it in val
//  }
//}
