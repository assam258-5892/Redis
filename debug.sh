#!/bin/bash

cd redis; git clean -xdf; OPTIMIZATION=-O0 make; cd ..
cd RediSearch; git clean -xdf; make DEBUG=1; cd ..
