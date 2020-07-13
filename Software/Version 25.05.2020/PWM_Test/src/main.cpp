#include <Arduino.h>
// the number of the LED pin
const int out1 = 16;  // 16 corresponds to GPIO16
const int out2 = 17;  // 16 corresponds to GPIO17
const int AD1 = 34;
const int AD2 = 35;

// setting PWM properties
const int freq = 40000;
const int Channel1 = 0;
const int Channel2 = 1;
const int resolution = 12;
float voltage1 = 10;
float voltage2 = 5;

int duty1 = 0;
int duty2 = 0;

// variable for storing analog input
float in1 = 0;
float in2 = 0;

 void dutyCycle(){
   duty1 = (voltage1*4095)/10.56;
   duty2 = (voltage2*4095)/10.56;
 }

void setup(){
  // configure LED PWM functionalitites
  ledcSetup(Channel1, freq, resolution);
  ledcSetup(Channel2, freq, resolution);

  analogReadResolution(12);
  
  // attach the channel to the GPIO to be controlled
  ledcAttachPin(out1, Channel1);
  ledcAttachPin(out2, Channel2);

  Serial.begin(115200);
}
 
void loop(){
  dutyCycle();
  ledcWrite(Channel1, duty1);
  ledcWrite(Channel2, duty2);
  
  in1 = (((float(analogRead(AD1)+218.54))/1253.2)-0.212)/0.234;
  in2 = (((float(analogRead(AD2)+218.54))/1253.2)-0.212)/0.234;
  delay(500);
  Serial.print("Input 1: ");
  Serial.print(analogRead(AD1));
   Serial.print("; ");
  Serial.println(in1);
  delay(500);
  Serial.print("Input 2: ");
  Serial.println(in2);
}

