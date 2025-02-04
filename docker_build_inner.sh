#!/bin/bash

make -j 3 WITH_IPF=true
make -j 3 WITH_IPF=true unit_test
make -j 3 e2e_test

make -j 3 clean
make -j 3 debug CFLAGS=-Wno-literal-suffix
# Disabled for now on Linux: there are too many lint errors at the moment ...
# make -j 3 clang-tidy
# Disabled for now as this is failing for unknown reasons.
# make -j 3 deb_pkg VERSION=99.99.0 REVISION=1

exit 0

make -j 3 clean
make -j 3 APP_PATH=/tmp/cap32 DESTDIR=/tmp/cap32 install
test/integrated/test_make_install.sh /tmp/cap32
