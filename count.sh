#!/bin/bash

./redis-cli FT.AGGREGATE publicT1Idx '*' LOAD 1 i2 GROUPBY 1 @i2 REDUCE COUNT 0 AS result
