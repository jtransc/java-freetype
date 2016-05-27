# https://github.com/jtransc/gdx-backend-jtransc/issues/4
#docker run -t -i mhaye/lljvm /bin/bash
#docker run -i -v `pwd`/freetype2:/project -t mhaye/lljvm /bin/bash -c lljvm-cc -Iinclude src/base/ftapi.c
#export PATH=/usr/local/lib/lljvm:$PATH
rm lljvm.cid
docker run \
	--cidfile "lljvm.cid" \
	-i -v `pwd`/freetype2:/project \
	-t soywiz/lljvm1 \
	/usr/local/lib/lljvm/lljvm-cc \
		-I/project/include \
		/project/src/base/ftapi.c \
		-o /project/freetype2.class
CID=`cat lljvm.cid`
rm lljvm.cid
docker cp $CID:/project/freetype2.class freetype2.class
