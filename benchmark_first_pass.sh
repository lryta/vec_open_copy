#!/bin/bash
sudo bash -c 'echo 3 >/proc/sys/vm/drop_caches'
echo "Original verseion:"
rm ../test_1 -rf
time cp ../linux-4.14.5 ../test_1 -r
sudo bash -c 'echo 3 >/proc/sys/vm/drop_caches'
echo "Vec_open verseion:"
rm ../test_2 -rf
time ./src/cp ../linux-4.14.5 ../test_2 -r
