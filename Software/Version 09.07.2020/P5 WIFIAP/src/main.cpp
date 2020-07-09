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
uint8_t temprature_sens_read();
}

//#define PIN1 35
//#define PIN2 34
//#define GLED 32
//#define RLED 33
//#define S1 25
//#define S2 26
//MQTT Konfigurationen
const char* mqtt_server = "192.168.137.6";//"m16.cloudmqtt.com";
#define mqtt_port 1883//12595
#define MQTT_USER "revpi01"//"eapcfltj"
#define MQTT_PASSWORD "ganzeasy"//"3EjMIy89qzVn"
#define MQTT_SERIAL_PUBLISH_CH "data/aktorboard/1/rx"//"/ESP32/serialdata/FHNW/P5/tx"
#define MQTT_SERIAL_RECEIVER_CH "data/aktorboard/1/tx"

WiFiClient wifiClient;
PubSubClient client(wifiClient);

double tcount = 0;
int NUM_SEC = 2; // Zeit Intervall Messungen
int status = 0;

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
  pinMode(02, OUTPUT);
  pinMode(04, OUTPUT);
  pinMode(05, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(23, OUTPUT);
  pinMode(27, OUTPUT);
 
 //Relais
  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);
  pinMode(21, OUTPUT);
  pinMode(22, OUTPUT);
//Taster
  pinMode(00, INPUT);
  pinMode(02, INPUT);


  
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

   client.loop();
     if (Serial.available() > 0) {
     char mun[501];
     memset(mun,0, 501);
     Serial.readBytesUntil( '\n',mun,500);
     publishSerialData(mun);
     }

  clock_t this_time = clock();
  clock_t last_time = this_time;
 //printf("Gran = %ld\n", NUM_SEC * CLOCKS_PER_SEC);
        this_time = clock();
        tcount += (double)(this_time - last_time);
        last_time = this_time;
          if(tcount > (double)(NUM_SEC * CLOCKS_PER_SEC)) // wird nur alle 10 Sec durchgeführt
         {
            tcount -= (double)(NUM_SEC * CLOCKS_PER_SEC);
            Serial.println(status);
            if(status==0){
              digitalWrite(05,HIGH);
              status=1;
            } else
            {
              digitalWrite(05,LOW);
              status=0;
            }
            

         }
}

      /*

     





      if(digitalRead(25)==1){
       publishSerialData("tasterMode");
       Serial.println("tasterMode");
     };
     */

    /*
  {
   
 }
     
            //printf("%d\n", count);
            //Serial.println(temperatur1000(PIN2));
            //Serial.print("internal temp [°C]: ");
           // unsigned temp = temperatur(PIN1);
            //Serial.println(temp);
            //char tempString[40];
            //snprintf(tempString,sizeof(tempString),"%3d",temp);

            /*
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
              

/*


        
        }
        //printf("DebugTime = %f\n", tcount);
    }
    return;
    */ 

