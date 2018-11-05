#include "esp32_digital_led_lib.h"

/*
 * Simplest possible example shows a single strand of NeoPixels. See Demo1 for multiple strands and other devices.
 */

int pixCount = 30;
strand_t pStrand = {.rmtChannel = 0, .gpioNum = 16, .ledType = LED_SK6812W_V1, .brightLimit = 32, .numPixels = pixCount,
   .pixels = nullptr, ._stateVars = nullptr};


void setup()
{
  Serial.begin(115200);
  Serial.println("Initializing...");

  pinMode (16, OUTPUT);
  digitalWrite (16, LOW);

  if (digitalLeds_initStrands(&pStrand, 1)) {
    Serial.println("Init FAILURE: halting");
    while (true) {};
  }
  
  digitalLeds_resetPixels(&pStrand);
}

void loop()
{
   
  while (true) {     

     uint8_t position = random (0,pixCount);
     
     uint8_t range = random (5,255);
     uint8_t r = random (0,range);
     uint8_t g = random (0,range);
     uint8_t b = random (0,range); 
     uint8_t w = 0;

    pStrand.pixels[position] = pixelFromRGBW(r, g, b, w);
    
    digitalLeds_updatePixels(&pStrand);

    delay(random (10,100));
  }
}
