import RPi.GPIO as GPIO
import time
from subprocess import call
import random

GPIO.setmode(GPIO.BCM)

GPIO.setup(18, GPIO.IN, pull_up_down=GPIO.PUD_UP)

while True:
    input_state = GPIO.input(18)
    if input_state == False:
        print('Button Pressed')
	un = str(random.randint(1,10000000))
	call(["raspivid", "-o", "/home/pi/video.h264." + un, "-t", "20000"])
        time.sleep(0.5)
