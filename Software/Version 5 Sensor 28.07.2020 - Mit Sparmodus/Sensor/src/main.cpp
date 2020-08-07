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
#include <ArduinoJson.h>
extern "C"
{
  uint8_t temprature_sens_read();
}

#define MQTT_SERIAL_RECEIVER_CH "data/sensorboard/#"
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
#define UOref_pin 25 //outputs the voltage via the voltage divider
#define UMref_pin 34 //messures voltage ntc Ref
#define Untc_pin 35  // messures voltage ntc
#define m_sensor 0.0008155002
#define b_sensor 0.1369856

char mqtt_server[40];
int mqtt_port = 1883;
char board_token[20];
char port_buffer[40];
bool shouldSaveConfig = false;
char const *topic[] = {"S1", "S2", "S3", "S4", "S0"};
int outpins[] = {LED1, LED2, LED3, LED4, LEDS};
int inpins[] = {T1_pin, T2_pin, T3_pin, T4_pin};

WiFiClient wifiClient;
PubSubClient client(wifiClient);
clock_t this_time = clock();
clock_t last_time = this_time;

double tcount = 0;
int NUM_SEC = 10; // time intervall messure temparatur
int status = 0;
int tresh = 15; //limit value from touch sensor signal is defined as pressed
int tastervalue[4];
boolean touchstate[] = {false, false, false, false};

int UOref = 190;
float temp;
float B = 4250;
float TN = 298.15;
float TK = 273.15;
float Untc = 0;
float Uref = 0;
float RT = 0;

void shine();
void tread();
void tempf();

long unsigned int Time;
long unsigned int waitTime = 500;

void saveConfigCallback()
{
  Serial.println("Should save config");
  shouldSaveConfig = true;
}

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
    if (client.connect(clientId.c_str(), "", ""))
    {
      Serial.println("connected");
      //Once connected, publish an announcement...
      client.publish("data/", "hello world");
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

char *generat_topic(const char *application)
{
  char *buffer = (char *)malloc(strlen(application) + 42);
  sprintf(buffer, "data/sensorboard/%s/%s", board_token, application);
  Serial.println(buffer);
  return buffer;
}
void callback(char *topicin, byte *payload, unsigned int length)
{
  Serial.println("-------new message from broker-----");
  Serial.print("channel:");
  Serial.println(topicin);
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
  client.publish(topic[4], serialData);
}

void touch() //only debuggin Function
{
  waitTime = 250;
  Time = millis();
  if (Time % waitTime < 2)
  {
    for (size_t i = 0; i < 4; i++)
    {
      Serial.print("Array index ");
      Serial.print(i);
      Serial.print(" : ");
      Serial.println(tastervalue[i]);
    }
  }
}
void shine()
{

  if (!client.connected())
  {
    reconnect();
  }
  for (size_t i = 0; i < 4; i++)
  {
    if (tastervalue[i] < tresh)
    {
      digitalWrite(outpins[i], HIGH);
      if (!touchstate[i])
      {
        client.publish(topic[i], "ON");
      }
      touchstate[i] = true;
    }

    else
    {
      touchstate[i] = false;
      digitalWrite(outpins[i], LOW);
    }
  }
}

void tread()
{
  int count = 15;
  for (size_t i = 0; i < 4; i++)
  {
    tastervalue[i] = 0;
  }

  for (size_t i = 0; i < count; i++)
  {
    for (size_t j = 0; j < 4; j++)
    {
      tastervalue[j] = tastervalue[j] + touchRead(inpins[j]);
    }
  }
  for (size_t l = 0; l < 4; l++)
  {
    tastervalue[l] = tastervalue[l] / count;
  }
}

void tempf() {
    temp = 0;
    Untc = 0;
    Uref = 0;
    for (int i = 0; i < 10; i++)
    {
        Untc += analogRead(Untc_pin);
        Uref += analogRead(UMref_pin);
    }
    Untc = Untc/10;
    Uref = Uref/10;
    Untc = Untc * m_sensor + b_sensor;
    Uref = Uref * m_sensor + b_sensor;
    RT = Untc / (Uref-Untc);
    temp = 100/(100/TN + 100/B * log(RT));
    temp = temp - TK;
}

void setup()
{
  Serial.begin(115200);
  for (size_t i = 0; i < 5; i++)
  {
    pinMode(outpins[i], OUTPUT);
  }

  pinMode(UOref_pin, OUTPUT);

  Serial.println("mounting FS...");

  if (SPIFFS.begin(true)) //true/false, Depending on how much flash an MC has
  {
    Serial.println("mounted file system");
    if (SPIFFS.exists("/config.json"))
    {
      //file exists, reading and loading
      Serial.println("reading config file");
      File configFile = SPIFFS.open("/config.json", "r");
      if (configFile)
      {
        Serial.println("opened config file");
        size_t size = configFile.size();
        // Allocate a buffer to store contents of the file.
        std::unique_ptr<char[]> buf(new char[size]);

        configFile.readBytes(buf.get(), size);
        DynamicJsonBuffer jsonBuffer;
        JsonObject &json = jsonBuffer.parseObject(buf.get());
        json.printTo(Serial);
        if (json.success())
        {
          Serial.println("\nparsed json");
          strcpy(mqtt_server, json["mqtt_server"]);
          strcpy(port_buffer, json["mqtt_port"]);
          strcpy(board_token, json["board_token"]);
        }
        else
        {
          Serial.println("failed to load json config");
        }
        configFile.close();
      }
    }
  }
  else
  {
    Serial.println("failed to mount FS");
  }

  WiFiManagerParameter custom_mqtt_server("server", "mqtt server", mqtt_server, 40);
  WiFiManagerParameter custom_mqtt_port("port", "mqtt port", port_buffer, 6);
  WiFiManagerParameter custom_board_token("board", "board location", board_token, 40);
  WiFiManager wifiManager;

  //set config save notify callback
  wifiManager.setSaveConfigCallback(saveConfigCallback);

  //add parameters to configportal
  wifiManager.addParameter(&custom_mqtt_server);
  wifiManager.addParameter(&custom_mqtt_port);
  wifiManager.addParameter(&custom_board_token);

  if (digitalRead(reset) == 1) //Sobald reset =1 Fehler auf Layout Theoretisch pin 25
  {
    wifiManager.startConfigPortal();
  }
  else
  {
    wifiManager.autoConnect();
  }
  if (!wifiManager.autoConnect())
  {
    Serial.println("failed to connect and hit timeout");
    delay(3000);
  }

  //if you get here you have connected to the WiFi
  Serial.println("connected...yeey :)");

  //read updated parameters
  strcpy(mqtt_server, custom_mqtt_server.getValue());
  strcpy(port_buffer, custom_mqtt_port.getValue());
  strcpy(board_token, custom_board_token.getValue());

  //save the custom parameters to FS
  if (shouldSaveConfig)
  {
    Serial.println("saving config");
    DynamicJsonBuffer jsonBuffer;
    JsonObject &json = jsonBuffer.createObject();
    json["mqtt_server"] = mqtt_server;
    json["mqtt_port"] = port_buffer;
    json["board_token"] = board_token;

    File configFile = SPIFFS.open("/config.json", "w");
    if (!configFile)
    {
      Serial.println("failed to open config file for writing");
    }
    json.printTo(Serial);
    json.printTo(configFile);
    configFile.close();
    //end save
    Serial.println("end save");
  }
  mqtt_port = String((char *)port_buffer).toInt();
  client.setServer(mqtt_server, mqtt_port);
  client.setCallback(callback);
  reconnect();
  for (size_t i = 0; i < 5; i++) //generate mqtt topic
  {
    topic[i] = generat_topic(topic[i]);
  }
}

void loop()
{
  //client.loop(); //for sevice MQTT message
  //touch(); only debbugin to define tresh
  tread();
  shine();

  this_time = clock();
  tcount += (double)(this_time - last_time);
  last_time = this_time;
  if (tcount > (double)(NUM_SEC * CLOCKS_PER_SEC)) // is only performed every x Sec
  {
    tcount -= (double)(NUM_SEC * CLOCKS_PER_SEC);
    if (status == 0)
    {
      digitalWrite(outpins[4], HIGH); // Status LED flashes mode
      status = 1;
    }
    else
    {
      digitalWrite(outpins[4], LOW);
      status = 0;
    }
    tempf();
  }
}