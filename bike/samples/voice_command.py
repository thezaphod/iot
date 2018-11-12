import time
import serial
import struct


commands = [
    "Turn on the light",
    "Turn off the light",
    "Play music",
    "Pause",
    "Next",
    "Previous",
    "Up",
    "Down",
    "Turn on the TV",
    "Turn off the TV",
    "Increase temperature",
    "Decrease temperature",
    "What's the time",
    "Open the door",
    "Close the door",
    "Left",
    "Right",
    "Stop",
    "Start",
    "Mode 1",
    "Mode 2",
    "Go",
]      

ser = serial.Serial()
ser.port='/dev/ttyAMA0'
ser.baudrate = 9600 
ser.parity=serial.PARITY_NONE
ser.stopbits=serial.STOPBITS_ONE
ser.bytesize=serial.EIGHTBITS
#ser.timeout=1
ser.open()

counter=0
print commands[1];          

c = b'\x0e'
val = struct.unpack( '<I', c)

while 1:
   cmd=ser.read(size=1)
   print commands[cmd]
