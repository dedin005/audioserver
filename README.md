# An audioserver that livestreams audio from a server to an end user

* This application requires several applications:

  1. Spotify (or another audio stream)  
  2. PulseAudio
  3. oggenc
  4. FFmpeg
  5. Apache (or another webserver)

## The run.sh script does these steps (**in this order**)

1. Starts Spotify and PulseAudio
2. Creates a null sink
3. Sends the Spotify output into the null sink
4. Records the null sink into oggenc
5. Takes the ogg output from oggenc and gives it to FFmpeg
6. FFmpeg routes the ogg file into an HLS output
7. The webserver reads from the HLS output file (.m3u8)
8. The end user receives the .m3u8 audio as a livestream


