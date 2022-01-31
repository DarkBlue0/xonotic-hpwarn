#!/bin/bash

git submodule update --init

if [ ! -d gmqcc ]; then
	git clone --depth=1 --branch=master https://gitlab.com/xonotic/gmqcc gmqcc
else
	cd gmqcc
	git pull
	cd ..
fi

cd gmqcc && make -j $(nproc --all)
cd ..
