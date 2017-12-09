#!/usr/bin/python

import dbus
import sys

bus = dbus.SessionBus()

try:
    player = dbus.SessionBus().get_object("org.mpris.MediaPlayer2.spotify",
"/org/mpris/MediaPlayer2")

    interface = dbus.Interface(player,
dbus_interface="org.mpris.MediaPlayer2.Player")

    metadata = player.Get("org.mpris.MediaPlayer2.Player", "Metadata", dbus_interface="org.freedesktop.DBus.Properties")

    def getMeta():
        print("[ " + metadata['xesam:artist'][0] + " : " + metadata['xesam:title'] + " ]")

    def getCommand():
            argument = sys.argv[1]
            if (argument == "-n"):
                interface.Next()
            elif (argument == "-p"):
                interface.Previous()
            elif (argument == "-pp"):
                interface.PlayPause()

            getMeta()

    def checkArg():
        if (len(sys.argv) > 1):
            getCommand()
        else:
            getMeta()

    checkArg()
except:
    print("SPOTIFY DOWN")
