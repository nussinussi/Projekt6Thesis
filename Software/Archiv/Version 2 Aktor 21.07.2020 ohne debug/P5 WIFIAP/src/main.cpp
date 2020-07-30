#include <Arduino.h>
#include <FS.h> //this needs to be first, or it all crashes and burns...
#include <SPIFFS.h>
#include <iostream>
#include <WiFi.h>
#include <esp_wifi.h>
#include <WebServer.h>   //https://github.com/zhouhan0126/WebServer-esp32
#include <DNSServer.h>   //https://github.com/zhouhan0126/DNSServer---esp32
#include <WiFiManager.h> //https://github.com/zhouhan0126/WIFIMANAGER-ESP32
#include "esp_system.h"
#include <Wire.h>
#include <stdio.h>
#include <time.h>
#include <PubSubClient.h>
#include <driver/adc.h>

extern "C"
{
  uint8_t temprature_sens_read();
}

const char *mqtt_server = "192.168.137.6";            //"m16.cloudmqtt.com";
#define mqtt_port 1883                                //12595
#define MQTT_USER "revpi01"                           //"eapcfltj"
#define MQTT_PASSWORD "ganzeasy"                      //"3EjMIy89qzVn"
#define MQTT_SERIAL_PUBLISH_CH "data/aktorboard/1/rx" //"/ESP32/serialdata/FHNW/P5/tx"
#define MQTT_SERIAL_PUBLISH_CH1 "data/aktorboard/1/E1"
#define MQTT_SERIAL_PUBLISH_CH2 "data/aktorboard/1/E2"
#define MQTT_SERIAL_RECEIVER_CH "data/aktorboard/1/#"

WiFiClient wifiClient;
PubSubClient client(wifiClient);

clock_t this_time = clock();
clock_t last_time = this_time;

double tcount = 0;
int NUM_SEC = 10; // Zeit Intervall Messungen
int status = 0;



// the number of the pin
const int out1 = 16; // 16 corresponds to GPIO16
const int out2 = 17; // 16 corresponds to GPIO17
const int AD1 = 34;
const int AD2 = 35;

// setting PWM properties
const int freq = 40000;
const int Channel1 = 0;
const int Channel2 = 1;
const int resolution = 12;
float voltage1 = 0;
float voltage2 = 0;
int duty1 = 0;
int duty2 = 0;

// variable for storing analog input
float in1 = 0;
float in2 = 0;

void setup_wifi()
{

  delay(10);
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  randomSeed(micros());
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}
void reconnect()
{
  // Loop until we're reconnected
  while (!client.connected())
  {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP32Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str(), MQTT_USER, MQTT_PASSWORD))
    {
      Serial.println("connected");
      //Once connected, publish an announcement...
      client.publish("/icircuit/presence/ESP32/", "hello world");
      // ... and resubscribe
      client.subscribe(MQTT_SERIAL_RECEIVER_CH);
    }
    else
    {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}
void callback(char *topic, byte *payload, unsigned int length)
{


  if (!strncmp((char *)topic, "data/aktorboard/1/K1", 50))
  { //subscribe relais k1-k4
    if (!strncmp((char *)payload, "ON", length))
    {
      digitalWrite(18, HIGH);
      digitalWrite(04, HIGH);
    }
    if (!strncmp((char *)payload, "OFF", length))
    {
      digitalWrite(18, LOW);
      digitalWrite(04, LOW);
    }
  }
  if (!strncmp((char *)topic, "data/aktorboard/1/K2", 50))
  {
    if (!strncmp((char *)payload, "ON", length))
    {
      digitalWrite(19, HIGH);
      digitalWrite(13, HIGH);
    }
    if (!strncmp((char *)payload, "OFF", length))
    {
      digitalWrite(19, LOW);
      digitalWrite(13, LOW);
    }
  }
  if (!strncmp((char *)topic, "data/aktorboard/1/K3", 50))
  {
    if (!strncmp((char *)payload, "ON", length))
    {
      digitalWrite(21, HIGH);
      digitalWrite(23, HIGH);
    }
    if (!strncmp((char *)payload, "OFF", length))
    {
      digitalWrite(21, LOW);
      digitalWrite(23, LOW);
    }
  }
  if (!strncmp((char *)topic, "data/aktorboard/1/K4", 50))
  {
    if (!strncmp((char *)payload, "ON", length))
    {
      digitalWrite(22, HIGH);
      digitalWrite(27, HIGH);
    }
    if (!strncmp((char *)payload, "OFF", length))
    {
      digitalWrite(22, LOW);
      digitalWrite(27, LOW);
    }
  }
  if (!strncmp((char *)topic, "data/aktorboard/1/A1", 50))
  { //Subscribe Analogausgänge
    payload[length] = '\0';
    voltage1 = String((char *)payload).toFloat() * 10;
    duty1 = (voltage1 * 4095) / 10.56;
    ledcWrite(Channel1, duty1);
  }

  if (!strncmp((char *)topic, "data/aktorboard/1/A2", 50))
  {
    payload[length] = '\0';
    voltage2 = String((char *)payload).toFloat() * 10;
    duty2 = (voltage2 * 4095) / 10.56;
    ledcWrite(Channel2, duty2);
  }
}
void publishSerialData(char *serialData)
{
  if (!client.connected())
  {
    reconnect();
  }

  client.publish(MQTT_SERIAL_PUBLISH_CH, serialData);
}

void publishADC()
{
  in1 = (((float(analogRead(AD1) + 218.54)) / 1253.2) - 0.212) / 0.234;
  in2 = (((float(analogRead(AD2) + 218.54)) / 1253.2) - 0.212) / 0.234;
  
  char buffer1[40];
  char buffer2[40];
  sprintf(buffer1, "%.3f", in1);
  sprintf(buffer2, "%.3f", in2);
  if (!client.connected())
  {
    reconnect();
  }
  client.publish(MQTT_SERIAL_PUBLISH_CH1, buffer1);
  client.publish(MQTT_SERIAL_PUBLISH_CH2, buffer2);
}

void setup()
{
  Serial.begin(115200);
  pinMode(34, INPUT);

  pinMode(02, INPUT); //Pin I02 Prüf-Messstelle
  pinMode(04, OUTPUT); //LED1
  pinMode(05, OUTPUT); //LED-Status
  pinMode(13, OUTPUT); //LED2
  pinMode(23, OUTPUT); //LED3
  pinMode(27, OUTPUT); //LED4

  pinMode(18, OUTPUT); //Relais K1
  pinMode(19, OUTPUT); //Relais K2
  pinMode(21, OUTPUT); //Relais K3
  pinMode(22, OUTPUT); //Relais K4

  pinMode(00, INPUT); //Mode Taster
  pinMode(25, INPUT); //Reset Taster

  WiFiManager wifiManager;
  WiFiManagerParameter custom_mqtt_server("Mserver", "mqtt server", "revpi01", 40);
  WiFiManagerParameter custom_mqtt_pw("Mpasswort", "Passwort", "ganzeasy", 40);
  wifiManager.addParameter(&custom_mqtt_server);
  wifiManager.addParameter(&custom_mqtt_pw);

  if (digitalRead(02) == 1) //Sobald reset =1 Fehler auf Layout Theoretisch pin 00 oder 25
  {
    wifiManager.startConfigPortal();
  }
  else
  {
    wifiManager.autoConnect();
  }
  
  client.setServer(mqtt_server, mqtt_port);
  client.setCallback(callback);
  reconnect();

  ledcSetup(Channel1, freq, resolution); //Out PWM 0-10V Konfigurieren
  ledcSetup(Channel2, freq, resolution);

  analogReadResolution(12); //Leg die Auflösung von Analogread auf 12 bits

  ledcAttachPin(out1, Channel1); // chanel dem Output zuweisen
  ledcAttachPin(out2, Channel2);
}

void loop()
{
  client.loop(); // MQTT Client

  this_time = clock();
  tcount += (double)(this_time - last_time);
  last_time = this_time;
  if (tcount > (double)(NUM_SEC * CLOCKS_PER_SEC)) // wird nur alle x Sec durchgeführt
  {
    tcount -= (double)(NUM_SEC * CLOCKS_PER_SEC);
    if (status == 0)
    {
      digitalWrite(05, HIGH); // Status LED blink Modus
      status = 1;
    }
    else
    {
      digitalWrite(05, LOW);
      status = 0;
    }
    publishADC(); //Analogwert Einlesen 0-10V In1 & In2
    
  }
}
