# https://github.com/jtransc/gdx-backend-jtransc/issues/4
#docker run -t -i mhaye/lljvm /bin/bash
#docker run -i -v `pwd`/freetype2:/project -t soywiz/lljvm1 /bin/bash
#docker run -i -v `pwd`/freetype2:/project -t mhaye/lljvm /bin/bash -c lljvm-cc -Iinclude src/base/ftapi.c
#export PATH=/usr/local/lib/lljvm:$PATH
rm lljvm.cid
#CC=lljvm-cc ./configure --host=x86_64-unknown-linux-gnu
#cd ${SOURCE_DIR} && $(MAKE) CC="${CWD}/$(CC)" CCLD="${CWD}/$(CC) -link"

# https://how-to-build-for-arm.wikispaces.com/freetype

cp build_int.sh `pwd`/freetype2/build_int.sh
docker run --cidfile "lljvm.cid" -i \
	-v `pwd`/freetype2:/project \
	-v `pwd`/../lljvm:/lljvm \
	-t soywiz/lljvm1 /bin/bash -c \
	"chmod +x /project/build_int.sh && /project/build_int.sh"
CID=`cat lljvm.cid`
rm lljvm.cid
#docker cp $CID:/project/freetype2.class freetype2.class
docker cp $CID:/project/objs/libfreetype.class libfreetype.class

#/usr/local/lib/lljvm/lljvm-cc -link -o /project/objs/libfreetype.class /project/objs/ftsystem.o /project/objs/ftdebug.o /project/objs/ftinit.o /project/objs/ftbase.o /project/objs/ftbbox.o /project/objs/ftbdf.o /project/objs/ftbitmap.o /project/objs/ftcid.o /project/objs/ftfstype.o /project/objs/ftgasp.o /project/objs/ftglyph.o /project/objs/ftgxval.o /project/objs/ftlcdfil.o /project/objs/ftmm.o /project/objs/ftotval.o /project/objs/ftpatent.o /project/objs/ftpfr.o /project/objs/ftstroke.o /project/objs/ftsynth.o /project/objs/fttype1.o /project/objs/ftwinfnt.o /project/objs/ftxf86.o /project/objs/truetype.o /project/objs/type1.o /project/objs/cff.o /project/objs/type1cid.o /project/objs/pfr.o /project/objs/type42.o /project/objs/winfnt.o /project/objs/pcf.o /project/objs/bdf.o /project/objs/sfnt.o /project/objs/autofit.o /project/objs/pshinter.o /project/objs/raster.o /project/objs/smooth.o /project/objs/ftcache.o /project/objs/ftgzip.o /project/objs/ftlzw.o /project/objs/psaux.o /project/objs/psnames.o