#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>

int main(int argc, char *argv[]) {
	int protobuf_fd;
	int num_bytes = atoi(argv[1]);
	char encoded[num_bytes];
	int i, j;

	protobuf_fd = open("/dev/protobuf", O_RDONLY | O_SYNC);
	read(protobuf_fd, encoded, num_bytes);

	i = 0;
	while (num_bytes >= 16) {
		printf("%08x  ", &encoded[i*16]);
		for (j=0; j < 16; j++) {
		if (j == 7)	
			printf("%02x  ", encoded[i*16+j]);
		else
			printf("%02x ", encoded[i*16+j]);
		}
		printf("\n");
		i++;
		num_bytes-=16;
	}

	if (num_bytes) {
		printf("%08x  ", &encoded[i*16]);
		for (j=0; j < num_bytes; j++) {
		if (j == 7)
	  		printf("%02x  ", encoded[i*16+j]);
		else
	  		printf("%02x ", encoded[i*16+j]);
		}
		printf("\n");
	}	

	close(protobuf_fd);
	return 0;
}
