#!/bin/bash

make clean
make
bochs -f bochsrc.bxrc

