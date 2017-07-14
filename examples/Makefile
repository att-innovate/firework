all: all_types add_person

all_types: all_types.cc all_types.pb.cc
	g++ all_types.cc all_types.pb.cc -g -fno-omit-frame-pointer `pkg-config --cflags --libs protobuf` -o all_types

add_person: add_person.cc addressbook.pb.cc
	g++ add_person.cc addressbook.pb.cc -g -fno-omit-frame-pointer `pkg-config --cflags --libs protobuf` -o add_person

