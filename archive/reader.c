#include <fcntl.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

#include <pulse/simple.h>

int main () {

  int fd = open("stream", O_RDWR);
  struct stat stat_buf;
  fstat(fd, &stat_buf);
  int size = stat_buf.st_size;
  char *stream =
      (char *)mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);

  pa_simple *s = NULL;
  pa_sample_spec ss;
  
  ss.format = PA_SAMPLE_S16NE;
  ss.channels = 1;
  ss.rate = 44100;

  s = pa_simple_new(NULL, "audioserver", PA_STREAM_PLAYBACK, NULL, "default", &ss, NULL, NULL, NULL);

  while (!(pa_simple_read(s, stream, 1, NULL) < 0));

  pa_simple_free(s);

  close(fd);
  munmap(stream, size);

}
