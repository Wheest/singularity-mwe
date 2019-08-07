#!/bin/bash

cd /exper/application/
mkdir -p _build
cd _build
rm -rf *
cmake ..
make
