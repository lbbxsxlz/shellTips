#!/bin/bash

diff -ur Makefile Makefile-m > Makefile.patch
patch -p0 < Makefile.patch
