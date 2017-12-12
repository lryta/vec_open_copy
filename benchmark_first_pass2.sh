#!/bin/bash
sudo bash -c 'echo 3 >/proc/sys/vm/drop_caches'
echo "Original verseion:"
sudo rm ../test_1 -rf
time cp src ../test_1 -r
sudo bash -c 'echo 3 >/proc/sys/vm/drop_caches'
echo "Vec_open verseion:"
sudo rm ../test_2 -rf
time ./src/cp src ../test_2 -r
