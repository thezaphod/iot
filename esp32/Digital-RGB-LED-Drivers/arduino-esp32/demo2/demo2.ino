#include "esp32_digital_led_lib.h"

/*
 * Simplest possible example shows a single strand of NeoPixels. See Demo1 for multiple strands and other devices.
 */

strand_t pStrand = {.rmtChannel = 0, .gpioNum = 16, .ledType = LED_WS2812B_V3, .brightLimit = 32, .numPixels = 20,
   .pixels = nullptr, ._stateVars = nullptr};

int stepper = 0;
int colord = 0;

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
     uint8_t range = 64;
     
     uint8_t r = random (0,range);
     uint8_t g = random (0,range);
     uint8_t b = random (0,range); 
     uint8_t w = random (0,range);

     Serial.println(r);
      Serial.println(g);
       Serial.println(b);
        Serial.println(w);
         Serial.println("  ");
  
    //pStrand.pixels[stepper] = pixelFromRGBW(10, colord, 0, 0);
    pStrand.pixels[stepper] = pixelFromRGBW(r, g, b, w);
    
    delay(100);
    stepper++;
    
    if(stepper > 20) {
      stepper = 0;
      //colord += 10;
    }

    //if(colord > 60) 
    //  colord = 0;
    
    digitalLeds_updatePixels(&pStrand);

}
