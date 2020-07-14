#include <Arduino.h>
#include "esp_system.h"
//#include "WiFi.h"

//WiFiServer server(80);
const char* ssid = "Max RubaDub is in the house";
const char* password = "123456789";

#define T1_pin 4
#define T2_pin 12 
#define T3_pin 14 
#define T4_pin 27 
#define LED1 16
#define LED2 17
#define LED3 18
#define LED4 19

#define UOref_pin 25 //Gibt Ref Spannung auf den Spannungsteiler aus
#define UMref_pin 34 //Misst ntc Ref Spannung
#define Untc_pin 35 // Misst Spannung am ntc

int T1v;
int T2v;
int T3v;
int T4v;

int UOref = 190;
float temp;
float B = 4250;
float TN = 298.15;
float TK = 273.15;
float Untc = 0;
float Uref = 0;
float RT = 0;

void shine();
void Tread();
void tempf();

long unsigned int Time;
long unsigned int waitTime = 500;

void setup() {
  // put your setup code here, to run once:
  //WiFi.softAP(ssid, password);
  //IPAddress IP = WiFi.softAPIP();
  //Serial.print("AP IP address: ");
  //Serial.println(IP);


  Serial.begin(9600);

  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);

  pinMode(UOref_pin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  waitTime = 250;
  Time = millis();

  if(Time%waitTime < 10){
  Serial.print("T1: ");
  Serial.println(T1v);
  }
  if(Time%waitTime < 10){
  Serial.print("T2: ");
  Serial.println(T2v);
  }
  if(Time%waitTime < 10){
  Serial.print("T3: ");
  Serial.println(T3v);
  }
  if(Time%waitTime < 10){
  Serial.print("T4: ");
  Serial.println(T4v);
  }
  if(Time%waitTime < 10){
  Serial.print("temp: ");
  Serial.println(temp);
  }
  Tread();
  shine();
  tempf();
}

void shine(){
  if (T1v < 15){
    digitalWrite(LED1,HIGH);
  }
  else if(T2v < 15){
    digitalWrite(LED2,HIGH);
  }
  else if(T3v < 15){
    digitalWrite(LED3,HIGH);
  }
  else if(T4v < 15){
    digitalWrite(LED4,HIGH);
  }
  else
  {
   digitalWrite(LED1,LOW);
   digitalWrite(LED2,LOW);
   digitalWrite(LED3,LOW);
   digitalWrite(LED4,LOW);
  }
}

void Tread(){
int count = 15;
for (size_t i = 0; i < count; i++)
{
  T1v = T1v + touchRead(T1_pin);
  T2v = T2v + touchRead(T2_pin); 
  T3v = T3v + touchRead(T3_pin); 
  T4v = T4v + touchRead(T4_pin); 
}
T1v = T1v/count;
T2v = T2v/count;
T3v = T3v/count;
T4v = T4v/count;
}

void tempf(){
  temp = 0;
  float temp2 = 0;
  for (int i = 0; i < 10; i++)
  {
  dacWrite(UOref_pin, UOref);
  Untc = analogRead(Untc_pin);
  Uref = analogRead(UMref_pin);
  Untc = (Untc+218.54)/1253.1;
  Uref = (Uref+218.54)/1253.1;
  RT = Untc / (Uref-Untc);
  temp2 = 100/(100/TN + 100/B * log(RT));
  temp2 = temp2 - TK;
  temp = temp + temp2;
  }
  temp = temp/10;
}