#include <iostream>
#include <string>
#include <fstream>

#include "varint.pb.h"

using namespace std;

int main(int argc, char* argv[]) {
	GOOGLE_PROTOBUF_VERIFY_VERSION;

	test::Varint64Array varint64Array;
	test::Varint64 *varint64;

	for (int i=0; i < 2048; i++) {
		varint64 = varint64Array.add_varint64();
		varint64->set_myint64(-1);
	}

	fstream output("varint64.out", ios::out | ios::trunc | ios::binary);
	varint64Array.SerializeToOstream(&output);

	return 0;
}
