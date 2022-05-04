#!/bin/bash -xeu
. ../devenv/env.sh
CC=${CC_MUSL_INSTR} CFLAGS=${CFLAGS_INSTR} PREFIX=${MUSL_INSTR_PREFIX} ./build-x.sh