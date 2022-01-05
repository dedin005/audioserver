pacmd load-module module-null-sink sink_name=spotify
pacmd update-sink-proplist spotify device.description=spotify

parec -d spotify.monitor | \
\
oggenc -b 192 --raw - | \
\
ffmpeg \
-f ogg \
-i pipe:0 \
-vn \
-c:a aac \
-b:a 128k \
-ac 2 \
-f hls \
-hls_time 1.2 \
-hls_list_size 1 \
-hls_delete_threshold 1 \
-hls_flags delete_segments \
 stream.m3u8
