#!/bin/bash -xeu
. ../devenv/env.sh
CC=${CC_MUSL_FULLINSTR} CFLAGS=${CFLAGS_FULLINSTR} PREFIX=${MUSL_FULLINSTR_PREFIX} ./build-x.sh