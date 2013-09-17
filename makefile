.PHONY: all clean distclean

all:
	make -f tinyoal.mk
	make -f 01wavfile.mk
	make -f 02oggfile.mk
	cp -fr bin/libtinyoal.so examples/bin/libtinyoal.so
	
clean:
	make clean -f tinyoal.mk
	make clean -f 01wavfile.mk
	make clean -f 02oggfile.mk
	-@ rm examples/bin/libtinyoal.so
	
dist: all distclean
	tar -czf tinyoal-posix.tar.gz *

distclean:
	make distclean -f tinyoal.mk
	make distclean -f 01wavfile.mk
	make distclean -f 02oggfile.mk

debug:
	make debug -f tinyoal.mk
	make debug -f 01wavfile.mk
	make debug -f 02oggfile.mk
	cp -fr bin/libtinyoal.so examples/bin/libtinyoal.so
