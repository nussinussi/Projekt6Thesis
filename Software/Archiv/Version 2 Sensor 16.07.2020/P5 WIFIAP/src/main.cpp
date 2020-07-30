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

const char *mqtt_server = "192.168.137.6"; //"m16.cloudmqtt.com";
#define mqtt_port 1883                     //12595
#define MQTT_USER "revpi01"                //"eapcfltj"
#define MQTT_PASSWORD "ganzeasy"           //"3EjMIy89qzVn"
#define MQTT_SERIAL_PUBLISH_CH0 "data/sensorboard/1/S0"
#define MQTT_SERIAL_PUBLISH_CH1 "data/sensorboard/1/S1"
#define MQTT_SERIAL_PUBLISH_CH2 "data/sensorboard/1/S2"
#define MQTT_SERIAL_PUBLISH_CH3 "data/sensorboard/1/S3"
#define MQTT_SERIAL_PUBLISH_CH4 "data/sensorboard/1/S4"
#define MQTT_SERIAL_RECEIVER_CH "data/aktorboard/1/rx"

#define T1_pin 4
#define T2_pin 12
#define T3_pin 14
#define T4_pin 27
#define LED1 16
#define LED2 17
#define LED3 18
#define LED4 19
#define LEDS 02
#define reset 13

#define UOref_pin 25 //Gibt Ref Spannung auf den Spannungsteiler aus
#define UMref_pin 34 //Misst ntc Ref Spannung
#define Untc_pin 35  // Misst Spannung am ntc

WiFiClient wifiClient;
PubSubClient client(wifiClient);

clock_t this_time = clock();
clock_t last_time = this_time;

double tcount = 0;
int NUM_SEC = 10; // Zeit Intervall Messungen
int status = 0;

int T1v;
int T2v;
int T3v;
int T4v;
int tresh = 15;
boolean touch1 = false;
boolean touch2 = false;
boolean touch3 = false;
boolean touch4 = false;

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
  client.publish(MQTT_SERIAL_PUBLISH_CH0, serialData);
}

void touch()
{
  // put your main code here, to run repeatedly:
  waitTime = 250;
  Time = millis();
  if (Time % waitTime < 2)
  {
    Serial.print("T1: ");
    Serial.println(T1v);
    Serial.print("T2: ");
    Serial.println(T2v);
    Serial.print("T3: ");
    Serial.println(T3v);
    Serial.print("T4: ");
    Serial.println(T4v);
  }
  Tread();
  shine();
}
void shine()
{

  if (!client.connected())
  {
    reconnect();
  }

  if (T1v < tresh)
  {
    digitalWrite(LED1, HIGH);
    if (!touch1)
    {
      client.publish(MQTT_SERIAL_PUBLISH_CH1, "ON");
    }
    touch1 = true;
  }
  else if (T2v < tresh)
  {
    digitalWrite(LED2, HIGH);
    if (!touch2)
    {
      client.publish(MQTT_SERIAL_PUBLISH_CH2, "ON");
    }
    touch2 = true;
  }
  else if (T3v < tresh)
  {
    digitalWrite(LED3, HIGH);
    if (!touch3)
    {
      client.publish(MQTT_SERIAL_PUBLISH_CH3, "ON");
    }
    touch3 = true;
  }
  else if (T4v < tresh)
  {
    digitalWrite(LED4, HIGH);
    if (!touch4)
    {
      client.publish(MQTT_SERIAL_PUBLISH_CH4, "ON");
    }
    touch4 = true;
  }
  else
  {
    digitalWrite(LED1, LOW);
    touch1 = false;
    digitalWrite(LED2, LOW);
    touch2 = false;
    digitalWrite(LED3, LOW);
    touch3 = false;
    digitalWrite(LED4, LOW);
    touch4 = false;
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
  Serial.println(temp);
  char buffer1[40];
  sprintf(buffer1, "%.2f", temp);
  publishSerialData(buffer1);
}

void setup()
{
  Serial.begin(115200);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LEDS, OUTPUT);

  pinMode(UOref_pin, OUTPUT);

  WiFiManager wifiManager;
  WiFiManagerParameter custom_mqtt_server("Mserver", "mqtt server", "revpi01", 40);
  WiFiManagerParameter custom_mqtt_pw("Mpasswort", "Passwort", "ganzeasy", 40);
  wifiManager.addParameter(&custom_mqtt_server);
  wifiManager.addParameter(&custom_mqtt_pw);
  if (digitalRead(reset) == 1) //Sobald reset =1 Fehler auf Layout Theoretisch pin 00 oder 25
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
}

void loop()
{
  //client.loop();
  touch();

 
  //printf("Gran = %ld\n", NUM_SEC * CLOCKS_PER_SEC);
  this_time = clock();
  tcount += (double)(this_time - last_time);
  last_time = this_time;
  if (tcount > (double)(NUM_SEC * CLOCKS_PER_SEC)) // wird nur alle x Sec durchgeführt
  {
    tcount -= (double)(NUM_SEC * CLOCKS_PER_SEC);
    if (status == 0)
    {
      digitalWrite(LEDS, HIGH); // Status LED blink Modus
      status = 1;
    }
    else
    {
      digitalWrite(LEDS, LOW);
      status = 0;
    }
    tempf();
  }
}