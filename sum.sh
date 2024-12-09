#!/bin/bash

./redis-cli FT.AGGREGATE publicT1Idx '*' LOAD 2 i1 i2 GROUPBY 1 @i2 REDUCE SUM 1 i1 AS result
