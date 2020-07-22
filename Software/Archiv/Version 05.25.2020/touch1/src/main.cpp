#include <Arduino.h>

#define T0 15
#define LED 19

void setup() {
  Serial.begin(115200);
  pinMode(LED, OUTPUT);
  pinMode(T0, INPUT);
}

void loop() {
  int a=0;
  int z=0;
  for (int i = 0; i < 10; i++)
  {
     a = touchRead(T0)+a;
     z++; 
  }
  a=a/10;
  
  Serial.print("messung");
  Serial.println(touchRead(T0));
  Serial.print("mean");
  Serial.println(a);
  Serial.print("count");
  Serial.println(z);
 
  if (a < 38){
    digitalWrite(LED,HIGH);
    }
  else
  {
   digitalWrite(LED,LOW);
  }
  delay(500);
    
}