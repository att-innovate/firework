#include <stdio.h>
#include <time.h>
#include <errno.h>

#define NANO_PER_SEC 1000000000L

int main(int argc, char *argv[]) {
	struct timespec res, start, end;
	unsigned long elapsed;

	if (clock_getres(CLOCK_PROCESS_CPUTIME_ID, &res))
		perror("clock_getres()");

	printf("clk:\t\tCLOCK_PROCESS_CPUTIME_ID\nresolution:\t%i s, %li ns\n", 
						res.tv_sec, res.tv_nsec);

	if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start))
		perror("clock_gettime()");

	sleep(atoi(argv[1]));

	if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end))
		perror("clock_gettime()");

	elapsed = NANO_PER_SEC * (end.tv_sec - start.tv_sec) 
			  			+ (end.tv_nsec - start.tv_nsec);

	printf("start:\t\t%i s, %li ns\n", start.tv_sec, start.tv_nsec);
	printf("end:\t\t%i s, %li ns\n", end.tv_sec, end.tv_nsec);
	printf("elapsed:\t%lu ns\n", elapsed);

	return 0;
}
