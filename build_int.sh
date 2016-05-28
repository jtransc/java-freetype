export INSTALLDIR=~/workbench/gcc-g++-4.8.2/arm
export PATH=$INSTALLDIR/bin:$PATH
export TARGETMACH=arm-none-linux-gnueabi
export BUILDMACH=i686-pc-linux-gnu
export CROSS=arm-none-linux-gnueabi
export CC=/usr/local/lib/lljvm/lljvm-cc
export LD=/usr/local/lib/lljvm/lljvm-cc -link
export AS=/usr/local/lib/lljvm/lljvm-cc -link-as-library
export AR=/usr/local/lib/lljvm/lljvm-cc -link-as-library
export CXX=/usr/local/lib/lljvm/lljvm-cc

#export CC=/usr/local/lib/lljvm/lljvm-cc
#export LINK="/usr/local/lib/lljvm/lljvm-cc -link-as-library"
#export CC=$CC 
#export LD='$LINK' 
#export AR='$LINK' 
#export ARFLAGS='' 
cd /project 
./autogen.sh 
./configure --host=x86-unknown-linux-gnu --enable-shared=false --without-png
make
