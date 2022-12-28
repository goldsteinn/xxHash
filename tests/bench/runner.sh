#! /bin/bash

make clean && make; for i in {0..4}; do for func in xxh3 XXH128; do echo "Running ${func}-${i}"; taskset -c 0 ./benchHash --mins=129 --maxs=240 --minl=0 --maxl=0 ${func} > new-x86-${func}-${i}.txt; done; done; git checkout HEAD~; make clean && make; for i in {0..4}; do for func in xxh3 XXH128; do echo "Running ${func}-${i}"; taskset -c 0 ./benchHash --mins=129 --maxs=240 --minl=0 --maxl=0 ${func} > old-x86-${func}-${i}.txt; done; done
