
String inputString = "";         // a String to hold incoming data
bool stringComplete = false;  // whether the string is complete

void setup() {
  // initialize serial:
  Serial.begin(9600);
  // reserve 200 bytes for the inputString:
  inputString.reserve(200);
  pinMode(LED_BUILTIN,OUTPUT);
}

void loop() {
 
  if (stringComplete) {
    //flash the led
    digitalWrite(LED_BUILTIN, HIGH);
    delay(50);
    // clear the string ready for again receiving input:
    inputString = "";
    stringComplete = false; 
    digitalWrite(LED_BUILTIN, LOW);
  }

  
}

void serialEvent() {
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char) Serial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a newline, set a flag so the main loop can
    // do something about it:
    if (inChar == '\n') {
      stringComplete = true;
    }
  }
}
