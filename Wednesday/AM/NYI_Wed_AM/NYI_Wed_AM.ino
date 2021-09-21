/*
  Coding cute numbers
  Becca Rose and Pete Bennett

  1. get pot reading in serial
  2. make cute or add own text
  3. change pot for other sensor (DIY or ??)
  4. get output working (blink LED)
  5. combine part of blink with reading using if/else statement
  6. use map() to control LED light with sensor input reading
*/

int mappedValue = 0;
int ledPin = 9;
int sensorPin = 0;
int sensorValue = 0;

// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin 0:
  sensorValue = analogRead(sensorPin);
  mappedValue = map(sensorValue, 0, 1023, 0, 255);
  // print out the value you read:
  Serial.print("sensor .。･:*:･" );
  Serial.print(sensorValue);
  Serial.print(" ❤ ");
  Serial.print(mappedValue);
  Serial.println(".。･:*:･ mapped" );

  analogWrite(ledPin, mappedValue);
  delay(1);        // delay in between reads for stability
}
