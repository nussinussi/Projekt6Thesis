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
//#include <Adafruit_Sensor.h>
//#include <Adafruit_BME280.h>

extern "C" {
uint8_t temprature_sens_read();
}

#define PIN1 35
#define PIN2 34
#define GLED 32
#define RLED 33
#define S1 25
#define S2 26
//MQTT Konfigurationen
const char* mqtt_server = "192.168.137.196";//"m16.cloudmqtt.com";
#define mqtt_port 1883//12595
#define MQTT_USER "revpi01"//"eapcfltj"
#define MQTT_PASSWORD "ganzeasy"//"3EjMIy89qzVn"
#define MQTT_SERIAL_PUBLISH_CH "datensammlung/revpi01/sensorwert"//"/ESP32/serialdata/FHNW/P5/tx"
#define MQTT_SERIAL_RECEIVER_CH "datensammlung/revpi01/devboard"

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
    if(!strncmp((char *)payload, "1", length)){
    digitalWrite(GLED,HIGH);
    }
    if(!strncmp((char *)payload, "0", length))
    {
    digitalWrite(GLED,LOW);  
    }
    if(!strncmp((char *)payload, "r1", length)){
    digitalWrite(RLED,HIGH);
    }
    if(!strncmp((char *)payload, "r0", length))
    {
    digitalWrite(RLED,LOW);  
    }
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
  pinMode(35, INPUT);
  pinMode(34, INPUT);
  pinMode(25, INPUT);
  pinMode(26, INPUT);
  pinMode(32, OUTPUT);
  pinMode(33, OUTPUT);
  pinMode(17, OUTPUT);
  
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

void loop() {
  int count = 1;
  double tcount = 0;
  int NUM_SEC = 3;
  clock_t this_time = clock();
  clock_t last_time = this_time;
 //printf("Gran = %ld\n", NUM_SEC * CLOCKS_PER_SEC);
  while(true)
    {
      if(digitalRead(S1)==1){
       publishSerialData("s11");
       Serial.println("Ein");
     };
  {
   client.loop();
   if (Serial.available() > 0) {
     char mun[501];
     memset(mun,0, 501);
     Serial.readBytesUntil( '\n',mun,500);
     publishSerialData(mun);
     }
 }
        this_time = clock();
        tcount += (double)(this_time - last_time);
        last_time = this_time;
          if(tcount > (double)(NUM_SEC * CLOCKS_PER_SEC)) // wird nur alle 10 Sec durchgeführt
        {
            tcount -= (double)(NUM_SEC * CLOCKS_PER_SEC);
            //printf("%d\n", count);
            Serial.println(temperatur1000(PIN2));
            Serial.print("internal temp [°C]: ");
            unsigned temp = temperatur(PIN1);
            Serial.println(temp);
            char tempString[40];
            snprintf(tempString,sizeof(tempString),"%3d",temp);
            publishSerialData(tempString);
            count++;
        }
        //printf("DebugTime = %f\n", tcount);
    }
    return; 
}