void setup() {
  // put your setup code here, to run once:
 pinMode(9,OUTPUT);
 pinMode(12,OUTPUT); 
Serial.begin(9600);
}

float i = 0;
float s;

void loop() {
  // put your main code here, to run repeatedly: 
   digitalWrite(12,HIGH);
   analogWrite(9,125+sin(i)*125);
   Serial.println(100+sin(i)*100);
   i=i+0.01;
   if(i>2*PI) { i=0; }
}
