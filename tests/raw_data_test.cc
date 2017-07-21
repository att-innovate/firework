#include <iostream>
#include <string>
#include <fstream>

#include "raw_data.pb.h"

using namespace std;

int main(int argc, char* argv[]) {
	GOOGLE_PROTOBUF_VERIFY_VERSION;

	test::RawDataArray rawDataArray;
	test::RawData *rawData;

	for (int i=0; i < 1024; i++) {
		rawData = rawDataArray.add_data();
		rawData->set_mystring("Firework!");
	}

	fstream output("raw_data.out", ios::out | ios::trunc | ios::binary);
	rawDataArray.SerializeToOstream(&output);

	return 0;
}
