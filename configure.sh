#!/bin/sh

# Pour chaque exécutable (donc projets "racine") (pas forcément chaque projet) :

archs="PC libopencm3"

for arch in $archs; do
    rm      build-$arch -rf
    mkdir   build-$arch -p
    cd      build-$arch
    cmake .. -DCMAKE_TOOLCHAIN_FILE=../../toolchains/stm32f303.cmake -GNinja -DDEBUG=0
    cd ..
done
