#!/bin/bash

mkdir build

export PROGS_OUT=$PWD/build
export QCC=$PWD/gmqcc/gmqcc
export BUILD_MOD=$PWD
export XONOTIC=1

make -C xonotic-data.pk3dir

# Remove the unwanted menu files?
rm -v build/menu.*
