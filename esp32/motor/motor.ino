/*
 Motor tests
*/
#include <Adafruit_NeoPixel.h>

// the number of the LED pin
const int pPin = 17;  // 16 corresponds to GPIO16
const int vPin = 16;  // 17 corresponds to GPIO17
const int rPin = 5;   // 5  corresponds to GPIO5

const int rgbPin = 23;  
const int buttonPin = 19;

// setting PWM properties
const int freq = 5000;
const int pChannel = 0;
const int vChannel = 1;
const int resolution = 8;

int mode = 0;
unsigned long btPressedMillis = 0;

// colors
int b = 30; // brightnes 
Adafruit_NeoPixel strip = Adafruit_NeoPixel(1, rgbPin, NEO_GRB + NEO_KHZ800);

uint32_t yellow = strip.Color(b,b,0);
uint32_t green = strip.Color(0,b,0 );
uint32_t cyan = strip.Color(0,b,b);
uint32_t blue = strip.Color(0,0,b);
uint32_t magenta = strip.Color(b,0,b);
uint32_t red = strip.Color(b,0,0);

uint32_t white = strip.Color(255,255,255);

//variabls to blink without delay:
const int led = 2;
unsigned long previousMillis = 0;        // will store last time LED was updated
const long interval = 1000;           // interval at which to blink (milliseconds)
int ledState = LOW;             // ledState used to set the LED



const unsigned long debuncingDelay = 300;

void IRAM_ATTR isr() {
  // debounce key
  unsigned long currentMillis = millis();
  if (currentMillis - btPressedMillis > debuncingDelay ) {
    if(mode ==5) {
      mode = 0;
    } else {  
      mode = mode + 1;
    }    
    btPressedMillis = currentMillis;  
    Serial.println(mode); 
  }
  
}
/*
   setup function
*/
void setup(void) {

  Serial.begin(115200);

  strip.begin();
  strip.show();

  // configure LED PWM functionalitites
  ledcSetup(pChannel, freq, resolution);
  ledcSetup(vChannel, freq, resolution);

  // attach the channel to the GPIO to be controlled
  ledcAttachPin(pPin, pChannel);
  ledcAttachPin(vPin, vChannel);

  pinMode(rPin, OUTPUT);

  pinMode(buttonPin, INPUT_PULLUP);
  attachInterrupt(buttonPin, isr, FALLING);
}

void displayMode() {
    switch (mode) {
      case 0:
        strip.setPixelColor(0, yellow);
        break;
      case 1:
         strip.setPixelColor(0, green);
        break;     
      case 2:
         strip.setPixelColor(0, cyan);
        break;
      case 3:
         strip.setPixelColor(0, blue);
        break;        
      case 4:
         strip.setPixelColor(0, magenta);
        break;       
       case 5:
         strip.setPixelColor(0, red);
        break;  
    }
    strip.show(); 
}







void loop(void) {

      switch (mode) {
      case 0:
          program0();
        break;
      case 1:
           program1();
        break;     
      case 2:
           program2();
        break;
      case 3:
           program3();
        break;        
      case 4:
           program4();
        break;       
       case 5:
           program2();
        break;  
    }
}


int delay_inter(int delaytime, int current_mode) {
  if (current_mode != mode) {
    return 0;
  } else {
    delay(delaytime);
  }
  return 1;
}

void program3(void) {
  Serial.println("program3");
  int current_mode = mode;
  displayMode();
  ledcWrite(pChannel, 0);
  for (int i = 0; i < 20; i++) {
    ledcWrite(vChannel, 255);
    if (delay_inter(300, current_mode) == 0) { goto bailout; }
    ledcWrite(vChannel, 0);
    if (delay_inter(300, current_mode) == 0) { goto bailout; }
  }
  bailout:
  return;
}

void program4(void) {
  Serial.println("program4");
  int current_mode = mode;
  displayMode();
  ledcWrite(pChannel, 0);
  for (int i = 0; i < 20; i++) {
    ledcWrite(vChannel, 255);
    if (delay_inter(150, current_mode) == 0) { goto bailout; }
    ledcWrite(vChannel, 0);
    if (delay_inter(150, current_mode) == 0) { goto bailout; }
  }
  for (int i = 0; i < 12; i++) {
    ledcWrite(vChannel, 180);
    if (delay_inter(150, current_mode) == 0) { goto bailout; }
    ledcWrite(vChannel,0);
    if (delay_inter(150, current_mode) == 0) { goto bailout; }
  }
  bailout:
  return;
}


void program2(void) {
  Serial.println("program2");
  int current_mode = mode;
  displayMode();
  for (int i = 0; i < 20; i++) {
    ledcWrite(vChannel, 0);
    ledcWrite(pChannel, 255);
    if (delay_inter(1000, current_mode) == 0) { goto bailout; }
    if (delay_inter(1000, current_mode) == 0) { goto bailout; }
    if (delay_inter(1000, current_mode) == 0) { goto bailout; }
    ledcWrite(vChannel, 200);
    if (delay_inter(1000, current_mode) == 0) { goto bailout; }
    if (delay_inter(1000, current_mode) == 0) { goto bailout; }
    ledcWrite(vChannel, 0);
    if (delay_inter(1000, current_mode) == 0) { goto bailout; }

    
    digitalWrite(rPin, HIGH);
    ledcWrite(pChannel, 0);
    if (delay_inter(200, current_mode) == 0) { goto bailout; }
    digitalWrite(rPin, LOW);
    ledcWrite(vChannel, 200);

    if (delay_inter(random(100), current_mode) == 0) { goto bailout; }
  }
  bailout:
  return;
}

void program1(void) {
  Serial.println("program1");
  int current_mode = mode;
  displayMode();
  ledcWrite(pChannel, 0);
  for (int i = 0; i < 20; i++) {
    ledcWrite(vChannel, 130);
    if (delay_inter(random(500, 1000), current_mode) == 0) { goto bailout; }
    ledcWrite(vChannel, 255);
    if (delay_inter(random(100, 800), current_mode) == 0) { goto bailout; }
  }
  bailout:
  return;
}

void program0(void) {
  Serial.println("program0");
  int current_mode = mode;
  displayMode();
  ledcWrite(pChannel, 0);
  for (int i = 0; i < 20; i++) {
    ledcWrite(vChannel, 130);
    if (delay_inter(random(500, 1000), current_mode) == 0) { goto bailout; }
    ledcWrite(vChannel, 255);
    if (delay_inter(random(100, 800), current_mode) == 0) { goto bailout; }
  }

  for (int i = 0; i < 20; i++) {
    ledcWrite(vChannel, 200);
    ledcWrite(pChannel, 255);
    if (delay_inter(2000, current_mode) == 0) { goto bailout; }
    digitalWrite(rPin, HIGH);
    ledcWrite(pChannel, 0);
    if (delay_inter(100, current_mode) == 0) { goto bailout; }
    digitalWrite(rPin, LOW);
    ledcWrite(vChannel, 200);

    if (delay_inter(random(100), current_mode) == 0) { goto bailout; }
  }
  bailout:
  return;
}
