docker run -i \
	-v `pwd`/freetype2:/project \
	-v `pwd`/../lljvm:/lljvm \
	-t soywiz/lljvm1 \
	/bin/bash
