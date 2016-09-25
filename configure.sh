#!/bin/sh

# Pour chaque exécutable (donc projets "racine") (pas forcément chaque projet) :

archs="PC libopencm3"

for arch in $archs; do
    rm -rf build-$arch
    mkdir build-$arch
    cd    build-$arch
    cmake .. -DARCH=$arch
    cd ..
done

