#include <fcntl.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

int main () {

  // int fd = open("raw", O_RDWR);
  // struct stat stat_buf;
  // fstat(fd, &stat_buf);
  // int size = stat_buf.st_size;
  // char *file_bytes =
  //     (char *)mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);

  // getchar();
  // close(fd);
  // munmap(file_bytes, size);

}