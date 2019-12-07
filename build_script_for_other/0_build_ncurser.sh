# @author ARJUN C R (arjuncr00@gmail.com)
#
# web site https://www.acrlinux.com
#
#!/bin/bash

cd $BASEDIR

cd ${SOURCEDIR}

cd ncurses-${NCURSES_VERSION}

    if [ "$1" == "--clean" ]  
    then
        make -j ${JFLAG} clean
    elif [ "$1" == "--build" ]
    then	    
    	sed -i '/LIBTOOL_INSTALL/d' c++/Makefile.in
    	CFLAGS="${CFLAGS}" ./configure \
        	--prefix=/usr \
        	--with-termlib \
        	--with-terminfo-dirs=/lib/terminfo \
        	--with-default-terminfo-dirs=/lib/terminfo \
        	--without-normal \
        	--without-debug \
        	--without-cxx-binding \
        	--with-abi-version=5 \
        	--enable-widec \
        	--enable-pc-files \
        	--with-shared \
        	CPPFLAGS=-I$PWD/ncurses/widechar \
        	LDFLAGS=-L$PWD/lib \
        	CPPFLAGS="-P"

    	make -j ${JFLAG} ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE
    	make ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE install -j ${JFLAG}  \
        DESTDIR=${ROOTFSDIR}
    fi
