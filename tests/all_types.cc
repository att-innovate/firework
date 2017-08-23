#include <iostream>
#include <string>
#include <fstream>
//#include <time.h>

#include "all_types.pb.h"

//#define NANO_PER_SEC 1000000000L
#define MB_64        524288
#define MB_32        262144
#define KB_128       1024

using namespace std;

int main(int argc, char* argv[]) {
	GOOGLE_PROTOBUF_VERIFY_VERSION;

	tutorial::DataArray dataArray;
	tutorial::AllTypes *allTypes;

	for (int i=0; i < 64; i++) {
		allTypes = dataArray.add_data();
	
		allTypes->set_mydouble(3.14159265358979323);
		allTypes->set_myfloat(3.14159);
		allTypes->set_myint32(-1);                   // should result in 5 bytes
		allTypes->set_myint64(-1);                   // should result in 10 bytes
		allTypes->set_myuint32(83886080);            // 0x05000000
		allTypes->set_myuint64(34359738368);         // 0x00000008 00000000
		allTypes->set_mysint32(-1);                  // ZigZag encoded as 1
		allTypes->set_mysint64(-3);                  // ZigZag encoded as 5
		allTypes->set_myfixed32(5);
		allTypes->set_myfixed64(5);
		allTypes->set_mysfixed32(-1);
		allTypes->set_mysfixed64(-1);
		allTypes->set_mybool(false);
		allTypes->set_mystring("Hello, world! Go Blue! ;-)");
		allTypes->set_mybytes("46697265776f726b");   // "Firework"
	}

	fstream output("all_types.out", ios::out | ios::trunc | ios::binary);
//	struct timespec start, end;
//	unsigned long diff;

	/*
	 * This is our function under test. The following will capture the time
	 * right before and right after the call to MessageLite::SerializeToOstream()
	 * returns. diff represents the time elapsed with nanosecond precision.
	 */
//	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
	dataArray.SerializeToOstream(&output);
//	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);

//	diff = NANO_PER_SEC * (end.tv_sec - start.tv_sec)
//				+ (end.tv_nsec - start.tv_nsec);

//	cout << "elapsed time: " << diff << " ns "
//				<< "(" << (static_cast<double>(diff))/NANO_PER_SEC << "s)" << endl;

	return 0;
}
