#!/bin/bash

set -x -e

cd "$(dirname "$0")"

if [[ ! -d "monero_c/.git" ]];
then
    git clone https://github.com/amory1997/monero_c  monero_c
    cd monero_c
    git checkout 0d93b1827b7c3b39583d57769824f75d710c8d00
    git reset --hard
    git submodule update --init --force --recursive
    ./apply_patches.sh monero
    ./apply_patches.sh wownero
    ./apply_patches.sh zano
else
    cd monero_c
fi

for coin in monero wownero zano;
do
    if [[ ! -f "$coin/.patch-applied" ]];
    then
        ./apply_patches.sh $coin
    fi
done
cd ..

echo "monero_c source prepared".
