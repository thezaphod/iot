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
  rainbow(20);
  rainbowCycle(20); 

  // random colors with random intervals
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

// Slightly different, this makes the rainbow equally distributed throughout
void rainbowCycle(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256*5; j++) { // 5 cycles of all colors on wheel
    for(i=0; i< pixCount; i++) {
      pStrand.pixels[i] = Wheel(((i * 256 / pixCount + j) & 255));
    }
    digitalLeds_updatePixels(&pStrand);
    delay(wait);
  }
}

void rainbow(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256; j++) {
    for(i=0; i<pixCount; i++) {
      pStrand.pixels[i] = Wheel((i+j) & 255);
    }
    digitalLeds_updatePixels(&pStrand);
    delay(wait);
  }
}

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
pixelColor_t Wheel(byte WheelPos) {
  WheelPos = 255 - WheelPos;
  if(WheelPos < 85) {
    return pixelFromRGB(255 - WheelPos * 3, 0, WheelPos * 3);
  }
  if(WheelPos < 170) {
    WheelPos -= 85;
    return pixelFromRGB(0, WheelPos * 3, 255 - WheelPos * 3);
  }
  WheelPos -= 170;
  return pixelFromRGB(WheelPos * 3, 255 - WheelPos * 3, 0);
}
