#!/bin/bash

git submodule update --init --recursive
BASE=$PWD
cd ${BASE}/SystemC
./autogen.sh
./configure --prefix=${BASE}/install/systemc
make all install

cd ${BASE}/ArchC
./autogen.sh
./configure --prefix=${BASE}/install/archc --with-systemc=${BASE}/install/systemc
make all install

cd ${BASE}
ln -s install/archc/etc/env.sh .
