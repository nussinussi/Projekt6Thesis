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

#define MQTT_SERIAL_PUBLISH_CH "data/aktorboard/"
#define MQTT_SERIAL_RECEIVER_CH "data/aktorboard/#"
#define R_1 18
#define LED_1 04
#define R_2 19
#define LED_2 13
#define R_3 21
#define LED_3 23
#define R_4 22
#define LED_4 27
#define LED_status 05

char mqtt_server[40];
int mqtt_port = 1883;
char board_token[20];
char port_buffer[40];
bool shouldSaveConfig = false;
char const *topic[] = {"K1", "K2", "K3", "K4", "A1", "A2", "E1", "E2"};

int outpins[][2] = {{R_1, LED_1}, {R_2, LED_2}, {R_3, LED_3}, {R_4, LED_4}};

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
  sprintf(buffer, "data/aktorboard/%s/%s", board_token, application);
  return buffer;
}

void callback(char *topicin, byte *payload, unsigned int length)
{
  for (size_t i = 0; i < 4; i++)
  {
    if (!strncmp((char *)topicin, (char *)topic[i], 50))
    { //subscribe relais k1-k4
      if (!strncmp((char *)payload, "ON", length))
      {
        digitalWrite(outpins[i][0], HIGH);
        digitalWrite(outpins[i][1], HIGH);
      }
      if (!strncmp((char *)payload, "OFF", length))
      {
        digitalWrite(outpins[i][0], LOW);
        digitalWrite(outpins[i][1], LOW);
      }
    }
  }
  if (!strncmp((char *)topicin, (char *)topic[4], 50))
  { //Subscribe Analogausgänge
    payload[length] = '\0';
    voltage1 = String((char *)payload).toFloat() * 10;
    duty1 = (voltage1 * 4095) / 10.56;
    ledcWrite(Channel1, duty1);
  }
  if (!strncmp((char *)topicin, (char *)topic[5], 50))
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
  char buffer0[40];
  sprintf(buffer0, topic[6], board_token);
  client.publish(buffer0, buffer1);
  sprintf(buffer0, topic[7], board_token);
  client.publish(buffer0, buffer2);
}

void setup()
{
  Serial.begin(115200);
  pinMode(34, INPUT);
  pinMode(02, INPUT);          //Pin I02 Prüf-Messstelle
  pinMode(LED_status, OUTPUT); //LED-Status
  pinMode(00, INPUT);          //Mode Taster
  for (size_t i = 0; i < 4; i++)
  {
    for (size_t j = 0; j < 2; j++)
    {
      pinMode(outpins[i][j], OUTPUT);
    }
  }

  Serial.println("mounting FS...");

  if (SPIFFS.begin(true)) //true/false, Je nach dem wieviel flash ein MC hat
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

  //add all your parameters here
  wifiManager.addParameter(&custom_mqtt_server);
  wifiManager.addParameter(&custom_mqtt_port);
  wifiManager.addParameter(&custom_board_token);
  if (digitalRead(02) == 1) //Sobald reset =1 Fehler auf Layout Theoretisch pin 00 oder 25
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
  ledcSetup(Channel1, freq, resolution); //Out PWM 0-10V Konfigurieren
  ledcSetup(Channel2, freq, resolution);
  analogReadResolution(12);      //Leg die Auflösung von Analogread auf 12 bits
  ledcAttachPin(out1, Channel1); // chanel dem Output zuweisen
  ledcAttachPin(out2, Channel2);

  for (size_t i = 0; i < 8; i++) //Mqtt topic generieren
  {
    topic[i] = generat_topic(topic[i]);
  }
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
      digitalWrite(LED_status, HIGH); // Status LED blink Modus
      status = 1;
    }
    else
    {
      digitalWrite(LED_status, LOW);
      status = 0;
    }
    publishADC(); //Analogwert Einlesen 0-10V In1 & In2
  }
}
