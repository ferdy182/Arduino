#include <Servo.h>

Servo s;

void setup() {
  // put your setup code here, to run once:
  //pinMode(9,OUTPUT);
  pinMode(A0, INPUT);
  Serial.begin(9600);
  s.attach(9);
}

void loop() {
   float l = analogRead(A0);
   Serial.print(l);
   Serial.print(" ");
   int v = map(l,0,1024,0,179);
   s.write(v);
   Serial.println(v);
  
}
