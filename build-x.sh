#!/bin/bash -xeu

export CFLAGS="-O2 ${CFLAGS}"
export LDFLAGS="-static ${LDFLAGS:-""}"
NPROC=${NPROC:-""}
env

make distclean || true
./configure \
	--disable-shared \
	--enable-static \
	--disable-mbedtls \
	--disable-openssl \
	--disable-debug-mode \
	--disable-libevent-regress \
	--disable-samples \
	--disable-malloc-replacement \
	--prefix $PREFIX $@
make -j${NPROC}
make install