#include <Arduino.h>
#include <FS.h>                 //this needs to be first, or it all crashes and burns...
#include <SPIFFS.h>
#include <iostream>
#include <WiFi.h>
#include <esp_wifi.h>
#include <WebServer.h>          //https://github.com/zhouhan0126/WebServer-esp32
#include <DNSServer.h>          //https://github.com/zhouhan0126/DNSServer---esp32
#include <WiFiManager.h>        //https://github.com/zhouhan0126/WIFIMANAGER-ESP32
#include "esp_system.h"
#include <Wire.h>
#include <stdio.h>
#include <time.h>
#include <PubSubClient.h>
#include <driver/adc.h>

extern "C" {
uint8_t temprature_sens_read();
}


const char* mqtt_server = "192.168.137.6";//"m16.cloudmqtt.com";
#define mqtt_port 1883//12595
#define MQTT_USER "revpi01"//"eapcfltj"
#define MQTT_PASSWORD "ganzeasy"//"3EjMIy89qzVn"
#define MQTT_SERIAL_PUBLISH_CH "data/aktorboard/1/rx"//"/ESP32/serialdata/FHNW/P5/tx"
#define MQTT_SERIAL_PUBLISH_CH1 "data/aktorboard/1/rx/1"
#define MQTT_SERIAL_PUBLISH_CH2 "data/aktorboard/1/rx/2"
#define MQTT_SERIAL_RECEIVER_CH "data/aktorboard/#"

WiFiClient wifiClient;
PubSubClient client(wifiClient);

double tcount = 0;
int NUM_SEC = 1; // Zeit Intervall Messungen
int status = 0;

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

void setup_wifi() {
    delay(10);
    while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
    }
    randomSeed(micros());
    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
}
void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP32Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str(),MQTT_USER,MQTT_PASSWORD)) {
      Serial.println("connected");
      //Once connected, publish an announcement...
      client.publish("/icircuit/presence/ESP32/", "hello world");
      // ... and resubscribe
      client.subscribe(MQTT_SERIAL_RECEIVER_CH);
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}
void callback(char* topic, byte *payload, unsigned int length) {
    Serial.println("-------new message from broker-----");
    Serial.print("channel:");
    Serial.println(topic);
    Serial.print("data:");  
    Serial.write(payload, length);
    Serial.println();
    if(!strncmp((char *)payload, "K1on", length)){ 
    digitalWrite(18,HIGH);
    digitalWrite(04,HIGH);
    }
    if(!strncmp((char *)payload, "K1off", length))
    {
    digitalWrite(18,LOW);
    digitalWrite(04,LOW);
    }
    if(!strncmp((char *)payload, "K2on", length)){
    digitalWrite(19,HIGH);
    digitalWrite(13,HIGH);
    }
    if(!strncmp((char *)payload, "K2off", length))
    {
    digitalWrite(19,LOW);
    digitalWrite(13,LOW);
    }
    if(!strncmp((char *)payload, "K3on", length)){
    digitalWrite(21,HIGH);
    digitalWrite(23,HIGH);
    }
    if(!strncmp((char *)payload, "K3off", length))
    {
    digitalWrite(21,LOW);
    digitalWrite(23,LOW);
    }
    if(!strncmp((char *)payload, "K4on", length)){
    digitalWrite(22,HIGH);
    digitalWrite(27,HIGH);
    }
    if(!strncmp((char *)payload, "K4off", length))
    {
    digitalWrite(22,LOW);
    digitalWrite(27,LOW);
    }
    if(!strncmp((char *)topic, "data/aktorboard/A1",50)){
    payload[length] = '\0';
    Serial.println(length);
    voltage1=String((char*)payload).toFloat()*10;
    Serial.print("Voltage_1: ");
    Serial.println(voltage1);
    duty1 = (voltage1*4095)/10.56;
    ledcWrite(Channel1, duty1);
    }

    if(!strncmp((char *)topic, "data/aktorboard/A2",50)){
    payload[length] = '\0';
    voltage2=String((char*)payload).toFloat()*10;
    Serial.print("Voltage_2: ");
    Serial.println(voltage2);
    duty2 = (voltage2*4095)/10.56;
    ledcWrite(Channel2, duty2);
    }
  }
void publishSerialData(char *serialData){
  if (!client.connected()) {
    reconnect();
  }
 
  client.publish(MQTT_SERIAL_PUBLISH_CH, serialData);
  //Serial.println(strcat(MQTT_SERIAL_PUBLISH_CH,canal);
}


float temperatur(int pin) 
{
  float aufloesung = 1023.0;
  float reading = 0;
  //analogReadResolution(12);
  for (size_t i = 0; i < 10; i++)
  {
  reading += analogRead(pin);
	}
  float voltage = (reading )/(aufloesung*10);
	int temp = (voltage - 0.5) * 100.0;
  return temp;
}

float temperatur1000(int pin) 
{
  float aufloesung = 4096;
  float reading = 0;
  //analogReadResolution(12);
  for (size_t i = 0; i < 10; i++)
  {
  reading += analogRead(pin);
	}
  float voltage = (reading )/(aufloesung*10)*3.3;
  Serial.println(voltage);
	int temp = (voltage-2.265)*(218.9624); // offset test 1 = 2.265
  return temp;
} //bis hier MQTT

void setup() {
  Serial.begin(115200);
  pinMode(34, INPUT);
  
  pinMode(02, OUTPUT);//Pin I02 Prüf-Messstelle
  pinMode(04, OUTPUT);//LED1
  pinMode(05, OUTPUT);//LED-Status
  pinMode(13, OUTPUT);//LED2
  pinMode(23, OUTPUT);//LED3
  pinMode(27, OUTPUT);//LED4
 
  pinMode(18, OUTPUT);//Relais K1
  pinMode(19, OUTPUT);//Relais K2
  pinMode(21, OUTPUT);//Relais K3
  pinMode(22, OUTPUT);//Relais K4

  pinMode(00, INPUT);//Mode Taster
  pinMode(25, INPUT);//Reset Taster

  WiFiManager wifiManager;
  WiFiManagerParameter custom_mqtt_server("Mserver", "mqtt server", "revpi01", 40);
  WiFiManagerParameter custom_mqtt_pw("Mpasswort", "Passwort", "ganzeasy", 40);
  wifiManager.addParameter(&custom_mqtt_server);
  wifiManager.addParameter(&custom_mqtt_pw);
  
  if(digitalRead(25)==0)
  {
    wifiManager.autoConnect(); //wenn gespeicherte daten gesucht werden sollen 
  }else
  {
    wifiManager.startConfigPortal (); // AP wird geöffnet
  }
  client.setServer(mqtt_server, mqtt_port);
  client.setCallback(callback);
  reconnect(); 
  
  ledcSetup(Channel1, freq, resolution);  //Out PWM 0-10V Konfigurieren
  ledcSetup(Channel2, freq, resolution);

  analogReadResolution(12); //Leg die Auflösung von Analogread auf 12 bits
  
  ledcAttachPin(out1, Channel1);// chanel dem Output zuweisen
  ledcAttachPin(out2, Channel2);
  }

  void publishADC(){
    in1 = (((float(analogRead(AD1)+218.54))/1253.2)-0.212)/0.234;
    in2 = (((float(analogRead(AD2)+218.54))/1253.2)-0.212)/0.234;
    Serial.print("Input 1: ");
    Serial.print(analogRead(AD1));
    Serial.print("; ");
    Serial.println(in1);
    Serial.print("Input 2: ");
    Serial.println(in2);
              
    int temp=in1*1000; // Umrechnung in millivolts
    char tempString1[40];
    char tempString2[40];
    snprintf(tempString1,sizeof(tempString1),"%6d",temp);
    temp=in2*1000;
    snprintf(tempString2,sizeof(tempString2),"%6d",temp);
    if (!client.connected()) {
    reconnect();
    }
    client.publish(MQTT_SERIAL_PUBLISH_CH1, tempString1);
    client.publish(MQTT_SERIAL_PUBLISH_CH2, tempString2);
    }

void loop() {
  client.loop(); // MQTT Client 
     
     /*
     if (Serial.available() > 0) { // anz. Daten im seriellen Empfangspuffer-> Debug
     char mun[501];
     memset(mun,0, 501);
     Serial.readBytesUntil( '\n',mun,500);
     publishSerialData(mun);
     }
     */
 clock_t this_time = clock();
 clock_t last_time = this_time;
     //printf("Gran = %ld\n", NUM_SEC * CLOCKS_PER_SEC);
  this_time = clock();
  tcount += (double)(this_time - last_time);
  last_time = this_time;
  if(tcount > (double)(NUM_SEC * CLOCKS_PER_SEC)) // wird nur alle 10 Sec durchgeführt
    {
    tcount -= (double)(NUM_SEC * CLOCKS_PER_SEC);
    if(status==0){
      digitalWrite(05,HIGH); // Status LED blink Modus
      status=1;
      } else
      {
       digitalWrite(05,LOW);
       status=0;
      }
      publishADC(); //Analogwert Einlesen 0-10V In1 & In2
      }
}

