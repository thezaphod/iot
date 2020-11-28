#include <Arduino.h>
#include <EEPROM.h>
#include "esp32_digital_led_lib.h"

#define EEPROM_SIZE 1024

/*
 * Simplest possible example shows a single strand of NeoPixels. See Demo1 for multiple strands and other devices.
 */

int pixCount = 256;
strand_t pStrand = {.rmtChannel = 0, .gpioNum = 16, .ledType = LED_WS2812B_V2, .brightLimit = 4, .numPixels = pixCount,
   .pixels = nullptr, ._stateVars = nullptr};

int ledState = 1;

struct Button {
  const uint8_t PIN;
  uint32_t numberKeyPresses;
  bool pressed;
};

Button button1 = {18, 0, false};

// executed when key pressed
void IRAM_ATTR isr() {
  button1.numberKeyPresses += 1;
  button1.pressed = true;

  portMUX_TYPE myMutex = portMUX_INITIALIZER_UNLOCKED;
  taskENTER_CRITICAL(&myMutex);
  // writing and commiting into EEPROM 
  Serial.println(1);

  EEPROM.writeUInt(0, button1.numberKeyPresses);
  Serial.println(3);
  EEPROM.commit();
  Serial.println(4);

  taskEXIT_CRITICAL(&myMutex);
}



void setup()
{
  
  EEPROM.begin(EEPROM_SIZE);

  Serial.begin(115200);
  Serial.println("Initializing...");

  // set up interrupt
  pinMode(button1.PIN, INPUT_PULLUP);
  attachInterrupt(button1.PIN, isr, FALLING);

  pinMode (16, OUTPUT);
  digitalWrite (16, LOW);

  if (digitalLeds_initStrands(&pStrand, 1)) {
    Serial.println("Init FAILURE: halting");
    while (true) {};
  }
  
  digitalLeds_resetPixels(&pStrand);

  
  // restarting ESP
  //Serial.println("Restarting in 10 seconds");
  //delay(10000);
  //ESP.restart();
}

void loop()
{


  uint32_t mode = EEPROM.readUInt(0);
  Serial.println("Mode");
  Serial.println(mode);
  delay(1000);
  
  rainbowCycle(20); 
  randomPixels();
  rainbow(20);

}



// random colors with random intervals
void randomPixels() {
  for (int j = 0; j < 4; j++) {
    for (int i = 0; i < pixCount; i++) {     
  
       uint8_t position = random (0,pixCount);
       
       uint8_t range = random (20,255);
       uint8_t r = random (0,range);
       uint8_t g = random (0,range);
       uint8_t b = random (0,range); 
       uint8_t w = 0;
  
      //pStrand.pixels[position] = pixelFromRGBW(r, g, b, w);
      pStrand.pixels[position] = pixelFromRGB(r, g, b);
      
      digitalLeds_updatePixels(&pStrand);
  
      delay(random (10,100));
    } 
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
