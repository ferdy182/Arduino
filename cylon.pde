void setup() {
  // put your setup code here, to run once:
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  
  pinMode(A0,INPUT);
  
  Serial.begin(9600);
}

float i = 0;
int val = 1;
int prevVal = 2;
float scale = 0.05;

void loop() {
  scale = analogRead(A0);
  scale = scale*0.1/1024;
   val = abs(3+sin(i)*3);
    Serial.println(scale);
    digitalWrite(2+val,HIGH);
    if(val!=prevVal) {
       digitalWrite(2+prevVal,LOW);  
       prevVal = val;
    }
    //digitalWrite(2+val,LOW);
    i=i+scale;
    if(i>2*PI) { i=0;}
}
