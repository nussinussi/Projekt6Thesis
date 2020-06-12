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
//#include <Adafruit_Sensor.h>
//#include <Adafruit_BME280.h>

extern "C" {
uint8_t temprature_sens_read();}

const char* mqtt_server = "192.168.137.152";//"m16.cloudmqtt.com";
#define mqtt_port 1883//12595
#define MQTT_USER "revpi01"//"eapcfltj"
#define MQTT_PASSWORD "ganzeasy"//"3EjMIy89qzVn"
#define MQTT_SERIAL_PUBLISH_CH "datensammlung/revpi01/devboard"//"/ESP32/serialdata/FHNW/P5/tx"
#define MQTT_SERIAL_RECEIVER_CH "datensammlung/revpi01/devboard"

// change with your threshold value
const int threshold = 20;
// variable for storing the touch pin value 
int touchValue;
int z =0;

WiFiClient wifiClient;
PubSubClient client(wifiClient);

void setup_wifi() {
    delay(10);
    // We start by connecting to a WiFi network
    // Serial.println();
    // Serial.print("Connecting to ");
    //Serial.println(ssid);
    //WiFi.begin(ssid, password);
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
    }
    
void publishSerialData(char *serialData){
  if (!client.connected()) {
    reconnect();
  }
  client.publish(MQTT_SERIAL_PUBLISH_CH, serialData);
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

  //LEDS
  pinMode(16, OUTPUT);
  pinMode(28, OUTPUT);
  pinMode(30, OUTPUT);
  pinMode(31, OUTPUT);

//Touch
  pinMode(14, INPUT);
  pinMode(12, INPUT);
  pinMode(8, INPUT);
  pinMode(9, INPUT);

  WiFiManager wifiManager;
  WiFiManagerParameter custom_mqtt_server("Mserver", "mqtt server", "revpi01", 40);
  WiFiManagerParameter custom_mqtt_pw("Mpasswort", "Passwort", "ganzeasy", 40);
  wifiManager.addParameter(&custom_mqtt_server);
  wifiManager.addParameter(&custom_mqtt_pw);
  wifiManager.autoConnect(); //wenn gespeicherte daten gesucht werden sollen 
  //wifiManager.startConfigPortal (); // AP wird jedesmal geöffnet
  Serial.begin(115200);
  client.setServer(mqtt_server, mqtt_port);
  client.setCallback(callback);
  reconnect();
}


  void loop(){
  // read the state of the pushbutton value:                  test
  touchValue = touchRead(14);
  Serial.print(touchValue);
  // check if the touchValue is below the threshold
  // if it is, set ledPin to HIGH
  if(touchValue < threshold){
    // turn LED on
    digitalWrite(16, HIGH);
    Serial.println("K1on");
    publishSerialData("K1on");
    if (z==0)
    {
       Serial.println("K1on");
    publishSerialData("K1on");
    z=1;
    }
    else
     {
       Serial.println("K1off");
    publishSerialData("K1off");
    z=0;
    }

  }
  else{
    // turn LED off
    digitalWrite(16, LOW);
    Serial.println("LED1off");
  }
  delay(500);
/*
   
  if(touchRead(12) < threshold){
   digitalWrite(28, HIGH);
    Serial.println("LED1on");
    publishSerialData("Touch1");
  }
  else{
    // turn LED off
    digitalWrite(28, LOW);
    Serial.println("LED1off");
  }
  delay(500);
    if(touchRead(9) < threshold){
   digitalWrite(30, HIGH);
    Serial.println("LED1on");
    publishSerialData("Touch1");
  }
  else{
    // turn LED off
    digitalWrite(30, LOW);
    Serial.println("LED1off");
  }
  delay(500);
    if(touchRead(8) < threshold){
   digitalWrite(31, HIGH);
    Serial.println("LED1on");
    publishSerialData("Touch1");
  }
  else{
    // turn LED off
    digitalWrite(31, LOW);
    Serial.println("LED1off");
  }
  delay(500);
  */
}