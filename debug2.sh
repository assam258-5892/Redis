#!/bin/bash

cd deps/RediSearch; git clean -xdf; make DEBUG=1; cd ../..
