
// 1026mapa
// ashley james brown
// simple arduino send data to processing 1 sensors


void setup() {
  // initialize the serial communication:
  pinMode(A0,INPUT);
  Serial.begin(9600);
}

void loop() {
  // send the value of analog input 0:
  Serial.println(analogRead(A0));

  delay(20);
}






