#!/bin/bash

cd deps/redis; git clean -xdf; OPTIMIZATION=-O0 make; cd ../..
cd deps/RediSearch; git clean -xdf; make DEBUG=1; cd ../..
