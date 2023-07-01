#!/bin/bash

source $REPO_HOME/toolchain/share.sh

set -e
set -x

# ------ riscv-arch-test -------------------------------------------------

if [ ! -d $DIR_ARCH_TEST ]; then
    git clone --depth 1 --branch 2.6.2 https://github.com/riscv-non-isa/riscv-arch-test.git $DIR_ARCH_TEST
fi

cd $DIR_ARCH_TEST
git checkout -B $BRANCH_NAME

