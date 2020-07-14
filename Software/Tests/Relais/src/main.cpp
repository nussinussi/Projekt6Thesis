#include <Arduino.h>

#define clear_pin 25 //clear und mode beschriftung vertauscht

const int K1_pin = 18;
const int K2_pin = 19;
const int K3_pin = 21;
const int K4_pin = 22;

const int freq = 40000;
const int Channel1 = 0;
const int Channel2 = 1;
const int Channel3 = 2;
const int Channel4 = 3;
const int resolution = 12;

int K_duty1 = 4095; //Anfangsmodus
int K_duty2 = 4095*0.3; //Stromsparmodus


void setup() {
    // configure LED PWM functionalitites
  ledcSetup(Channel1, freq, resolution);
  ledcSetup(Channel2, freq, resolution);
  ledcSetup(Channel2, freq, resolution);
  ledcSetup(Channel2, freq, resolution);

  // attach the channel to the GPIO to be controlled
  ledcAttachPin(K1_pin, Channel1);
  ledcAttachPin(K2_pin, Channel2);
  ledcAttachPin(K3_pin, Channel3);
  ledcAttachPin(K4_pin, Channel4);

pinMode(clear_pin, INPUT_PULLUP);

}

void loop() {
if(digitalRead(clear_pin)==HIGH){
ledcWrite(Channel1, K_duty1);
ledcWrite(Channel2, K_duty1);
ledcWrite(Channel3, K_duty1);
ledcWrite(Channel4, K_duty1);
}

if(digitalRead(clear_pin)==LOW){
ledcWrite(Channel1, K_duty2);
ledcWrite(Channel2, K_duty2);
ledcWrite(Channel3, K_duty2);
ledcWrite(Channel4, K_duty2);
}

}