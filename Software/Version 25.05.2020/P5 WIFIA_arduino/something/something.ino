//#include <Arduino.h>
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
uint8_t temprature_sens_read();
}

//#define PIN1 35
//#define PIN2 34
//#define GLED 32
//#define RLED 33
//#define S1 25
//#define S2 26
//MQTT Konfigurationen
const char* mqtt_server = "192.168.137.20";//"m16.cloudmqtt.com";
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
    if(!strncmp((char *)payload, "K1on", length)){
    digitalWrite(30,HIGH);
    digitalWrite(26,HIGH);
    }
    if(!strncmp((char *)payload, "K1off", length))
    {
    digitalWrite(30,LOW);
    digitalWrite(26,LOW);
    }
    if(!strncmp((char *)payload, "K2on", length)){
    digitalWrite(31,HIGH);
    digitalWrite(29,HIGH);
    }
    if(!strncmp((char *)payload, "K2off", length))
    {
    digitalWrite(31,LOW);
    digitalWrite(29,LOW);
    }
    if(!strncmp((char *)payload, "K3on", length)){
    digitalWrite(33,HIGH);
    digitalWrite(37,HIGH);
    }
    if(!strncmp((char *)payload, "K3off", length))
    {
    digitalWrite(33,LOW);
    digitalWrite(37,LOW);
    }
    if(!strncmp((char *)payload, "K4on", length)){
    digitalWrite(36,HIGH);
    digitalWrite(12,HIGH);
    }
    if(!strncmp((char *)payload, "K4off", length))
    {
    digitalWrite(36,LOW);
    digitalWrite(12,LOW);
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
  //pinMode(35, INPUT);
  pinMode(34, INPUT);
  //pinMode(25, INPUT);

  //LEDS
  pinMode(24, OUTPUT);
  pinMode(26, OUTPUT);
  pinMode(29, OUTPUT);
  pinMode(16, OUTPUT);
  pinMode(37, OUTPUT);
  pinMode(12, OUTPUT);
 
 //Relais
  pinMode(30, OUTPUT);
  pinMode(31, OUTPUT);
  pinMode(33, OUTPUT);
  pinMode(36, OUTPUT);
//Taster
  pinMode(25, INPUT);
  pinMode(10, INPUT);


  
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
      if(digitalRead(25)==1){
       publishSerialData("tasterMode");
       Serial.println("tasterMode");
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
            //Serial.println(temperatur1000(PIN2));
            //Serial.print("internal temp [°C]: ");
           // unsigned temp = temperatur(PIN1);
            //Serial.println(temp);
            char tempString[40];
            //snprintf(tempString,sizeof(tempString),"%3d",temp);
            publishSerialData(tempString);
            count++;

            if (digitalRead(16)==0){
            digitalWrite(16,HIGH);
            digitalWrite(24,HIGH);
            }else
            {
            digitalWrite(16,LOW);
            digitalWrite(24,LOW);
            }
            


            
            /*

                adc1_config_width(ADC_WIDTH_BIT_12);
                adc1_config_channel_atten(ADC1_CHANNEL_7,ADC_ATTEN_DB_0);
                int val = adc1_get_raw(ADC1_CHANNEL_7);
                 
                Serial.println(val);
                adc2_vref_to_gpio(GPIO_NUM_25) ;

                //adc1_vref_to_gpio(GPIO_NUM_34); 
            */
              





        }
        //printf("DebugTime = %f\n", tcount);
    }
    return; 
}
