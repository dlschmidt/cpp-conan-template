#!/bin/sh
mkdir -p build
cd build

conan install ..
cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
cmake --build .

echo ""
./bin/main