#!/bin/bash

cd redis; git clean -xdf; make; cd ..
cd RediSearch; git clean -xdf; make; cd ..
