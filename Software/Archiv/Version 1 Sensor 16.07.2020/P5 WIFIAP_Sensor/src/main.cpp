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
//#include <Adafruit_Sensor.h>
//#include <Adafruit_BME280.h>

extern "C"
{
  uint8_t temprature_sens_read();
}

const char *mqtt_server = "192.168.137.6";            //"m16.cloudmqtt.com";
#define mqtt_port 1883                                //12595
#define MQTT_USER "revpi01"                           //"eapcfltj"
#define MQTT_PASSWORD "ganzeasy"                      //"3EjMIy89qzVn"
#define MQTT_SERIAL_PUBLISH_CH "data/aktorboard/1/tx" //"/ESP32/serialdata/FHNW/P5/tx"
#define MQTT_SERIAL_RECEIVER_CH "data/aktorboard/1/rx"

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
#define Untc_pin 35  // Misst Spannung am ntc

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

WiFiClient wifiClient;
PubSubClient client(wifiClient);

void setup_wifi()
{
  delay(10);
  // We start by connecting to a WiFi network
  // Serial.println();
  // Serial.print("Connecting to ");
  //Serial.println(ssid);
  //WiFi.begin(ssid, password);
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
  Serial.println("-------new message from broker-----");
  Serial.print("channel:");
  Serial.println(topic);
  Serial.print("data:");
  Serial.write(payload, length);
  Serial.println();
}

void publishSerialData(char *serialData)
{
  if (!client.connected())
  {
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
  float voltage = (reading) / (aufloesung * 10);
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
  float voltage = (reading) / (aufloesung * 10) * 3.3;
  Serial.println(voltage);
  int temp = (voltage - 2.265) * (218.9624); // offset test 1 = 2.265
  return temp;
}
void touch()
{
  // put your main code here, to run repeatedly:
  waitTime = 250;
  Time = millis();
  if (Time % waitTime < 10)
  {
    Serial.print("T1: ");
    Serial.println(T1v);
    Serial.print("T2: ");
    Serial.println(T2v);
    Serial.print("T3: ");
    Serial.println(T3v);
    Serial.print("T4: ");
    Serial.println(T4v);
    Serial.print("temp: ");
    Serial.println(temp);
  }
  Tread();
  shine();
  tempf();
}
void shine()
{
  if (T1v < 15)
  {
    digitalWrite(LED1, HIGH);
  }
  else if (T2v < 15)
  {
    digitalWrite(LED2, HIGH);
  }
  else if (T3v < 15)
  {
    digitalWrite(LED3, HIGH);
  }
  else if (T4v < 15)
  {
    digitalWrite(LED4, HIGH);
  }
  else
  {
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
  }
}

void Tread()
{
  int count = 15;
  T1v = 0;
  T2v = 0;
  T3v = 0;
  T4v = 0;
  for (size_t i = 0; i < count; i++)
  {
    T1v = T1v + touchRead(T1_pin);
    T2v = T2v + touchRead(T2_pin);
    T3v = T3v + touchRead(T3_pin);
    T4v = T4v + touchRead(T4_pin);
  }
  T1v = T1v / count;
  T2v = T2v / count;
  T3v = T3v / count;
  T4v = T4v / count;
}

void tempf()
{
  temp = 0;
  float temp2 = 0;
  for (int i = 0; i < 10; i++)
  {
    dacWrite(UOref_pin, UOref);
    Untc = analogRead(Untc_pin);
    Uref = analogRead(UMref_pin);
    Untc = (Untc + 218.54) / 1253.1;
    Uref = (Uref + 218.54) / 1253.1;
    RT = Untc / (Uref - Untc);
    temp2 = 100 / (100 / TN + 100 / B * log(RT));
    temp2 = temp2 - TK;
    temp = temp + temp2;
  }
  temp = temp / 10;
}

void setup()
{

  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);

  pinMode(UOref_pin, OUTPUT);

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

void loop()
{
}