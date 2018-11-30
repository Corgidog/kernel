#!/bin/bash
cd $1
echo "第一个参数为：$1";

make clean
make
bochs -f "bochsrc.bxrc"

