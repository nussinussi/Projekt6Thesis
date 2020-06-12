#include <Arduino.h>

#define T0 32
#define LED 19

void setup() {
  Serial.begin(115200);
  pinMode(LED, OUTPUT);
}

void loop() {
  int a = touchRead(T0);
  Serial.println(touchRead(T0));
  if (a < 38){
    digitalWrite(LED,HIGH);
    }
  else
  {
   digitalWrite(LED,LOW);
  }
    
}