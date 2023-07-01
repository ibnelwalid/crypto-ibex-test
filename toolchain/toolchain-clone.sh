#!/bin/bash

source $REPO_HOME/toolchain/share.sh

set -e
set -x

# ------ Toolchain ----------------------------------------------------------

if [ ! -d $DIR_TOOLCHAIN ]; then
    git clone https://github.com/riscv/riscv-gnu-toolchain.git $DIR_TOOLCHAIN

	cd $DIR_TOOLCHAIN
	git submodule update --init --recursive binutils
	git submodule update --init --recursive dejagnu
	git submodule update --init --recursive gcc
	git submodule update --init --recursive gdb
	git submodule update --init --recursive glibc
	git submodule update --init --recursive newlib

    # ------ GCC ----------------------------------------------------------------
    cd $DIR_GCC
    git checkout $GCC_COMMIT

    # ------ BINUTILS ----------------------------------------------------------
    cd $DIR_BINUTILS
    git checkout $BINUTILS_COMMIT
fi

cd $REPO_HOME

