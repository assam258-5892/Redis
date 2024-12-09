#!/bin/bash

cd deps/redis; git clean -xdf; make; cd ../..
cd deps/RediSearch; git clean -xdf; make; cd ../..
