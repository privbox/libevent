#!/bin/bash -xeu
. ../devenv/env.sh
CC=${CC_MUSL_NOINSTR} CFLAGS=${CFLAGS_NOINSTR} PREFIX=${MUSL_NOINSTR_PREFIX} ./build-x.sh