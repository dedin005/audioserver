# What it does

* this app has a webserver that can be accesses through LAN

* this lan server will push audio to a device that connects to it

* this server won't have the ability to pause the audio; it just plays

* the client will be able to play the audio, in sync hopefully

* ideally there would be a console that lets the user control the audio that is played (spotify API?)

# Needed Software

* daemon to talk to the spotify api
  * probably pulseaudio and a simple spotify audio backend that will play the music
  * pulse would also take care of the "saving" the audio file to an accessible location

* an audioserver to read the pulseaudio data and play it on the website

# Flow

* the spotify playing and pulseaudio capture is done within docker image

* the audioserver is hosted on another docker image; it can read the audio from the other image (might just skip this and use one docker image for everything)

  * audio from spotify app is sent to pulseaudio
  
  * audio from pulse loopback is captured and sent to the playback server
  
  * the playback server streams the audio from pulse and anyone who connects can get the same data

***

# Add-Ons

* add a control server that can be used to control the music that is being played from the webserver 

***

# Second Audioserver

* Allow music to be controlled through a web interface for a speaker, people can add and skip music as they like

* use [musicpd](https://www.musicpd.org) or another service to control music that is being played
