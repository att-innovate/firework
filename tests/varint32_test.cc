#include <iostream>
#include <string>
#include <fstream>

#include "varint.pb.h"

using namespace std;

int main(int argc, char* argv[]) {
	GOOGLE_PROTOBUF_VERIFY_VERSION;

	test::Varint32Array varint32Array;
	test::Varint32 *varint32;

	for (int i=0; i < 2048; i++) {
		varint32 = varint32Array.add_varint32();
		varint32->set_myint32(-5);
	}

	fstream output("varint32.out", ios::out | ios::trunc | ios::binary);
	varint32Array.SerializeToOstream(&output);

	return 0;
}
