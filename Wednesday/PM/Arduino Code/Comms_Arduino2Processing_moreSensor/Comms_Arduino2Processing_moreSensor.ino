
// 1026mapa
// ashley james brown
// more than 1 sensor

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  float s1 = analogRead(A0);

  delay(100);
  float s2 = analogRead(A1);
  delay (100);

  Serial.print("xValue:");
  Serial.print(s1);
  Serial.print(",");

  Serial.print("yValue:");
  Serial.print(s2);
  Serial.println(",");
}
