#!/usr/bin/env python3
import os

interface = "wlxd03745d5dbde"

os.system("sudo ifconfig " + interface + " down")
os.system("sudo ip link set " + interface + " name wlan0")
os.system("sudo ifconfig wlan0 up")
