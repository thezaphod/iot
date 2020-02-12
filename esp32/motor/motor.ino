/*
 * Copyright (c) 2018, circuits4you.com
 * All rights reserved.
 * 
 * ESP32 DAC - Digital To Analog Conversion Example
 */

#define DAC1 25
#define DAC2 26

// the number of the LED pin
const int pPin = 16;  // 16 corresponds to GPIO16
const int vPin = 17;  // 17 corresponds to GPIO17
const int rPin = 5;   // 5  corresponds to GPIO5

// setting PWM properties
const int freq = 5000;
const int pChannel = 0;
const int vChannel = 1;
const int resolution = 8;
 
void setup() {
  Serial.begin(115200);
  
    // configure LED PWM functionalitites
  ledcSetup(pChannel, freq, resolution);
  ledcSetup(vChannel, freq, resolution);
  
  // attach the channel to the GPIO to be controlled
  ledcAttachPin(pPin, pChannel);
  ledcAttachPin(vPin, vChannel);

  pinMode(rPin, OUTPUT);
}

void loop() { 

   while(true) {
      digitalWrite(rPin, LOW);
      delay(2000);  
      digitalWrite(rPin, HIGH);
      delay(2000);  
   }    
  
  // increase the LED brightness
  for(int dutyCycle = 180; dutyCycle <= 255; dutyCycle++){   
    // changing the LED brightness with PWM
    ledcWrite(pChannel, dutyCycle);
    delay(30);
  }
  

  
  // decrease the LED brightness
  for(int dutyCycle = 255; dutyCycle >= 180; dutyCycle--){
    // changing the LED brightness with PWM
    ledcWrite(pChannel, dutyCycle);   
    delay(15);


  }
 
//  int Value = 255; //255= 3.3V 128=1.65V 
//  dacWrite(DAC1, 255);  
}
