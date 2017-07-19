all: all_types add_person

varint32_test: varint32_test.cc varint.pb.cc
	g++ varint32_test.cc varint.pb.cc -g -fno-omit-frame-pointer -Wl,--dynamic-linker,/home/root/install/lib/ld-2.20.so `pkg-config --cflags --libs protobuf` -o varint32_test

varint64_test: varint64_test.cc varint.pb.cc
	g++ varint64_test.cc varint.pb.cc -g -fno-omit-frame-pointer -Wl,--dynamic-linker,/home/root/install/lib/ld-2.20.so `pkg-config --cflags --libs protobuf` -o varint64_test

all_types: all_types.cc all_types.pb.cc
	g++ all_types.cc all_types.pb.cc -g -fno-omit-frame-pointer -Wl,--dynamic-linker,/home/root/install/lib/ld-2.20.so `pkg-config --cflags --libs protobuf` -o all_types

add_person: add_person.cc addressbook.pb.cc
	g++ add_person.cc addressbook.pb.cc -g -fno-omit-frame-pointer -Wl,--dynamic-linker,/home/root/install/lib/ld-2.20.so `pkg-config --cflags --libs protobuf` -o add_person

