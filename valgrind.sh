#!/bin/bash

date
valgrind --tool=callgrind ./redis-server redis-release.conf &
REDIS_PID=$!
sleep 1
OUT=`./redis-cli GET UNKNOWN 2>&1`
RES=$?
echo "LOG: $RES: $OUT"
while [[ "$RES" -ne "0" ]] || [[ "$OUT" == "LOADING Redis is loading the dataset in memory" ]]
do
    sleep 1
    OUT=`./redis-cli GET UNKNOWN 2>&1`
    RES=$?
    echo "LOG: $RES: $OUT"
done
echo "END: $RES: $OUT"
date
for var in {1..1000}
do
    OUT=`time ./sum.sh 2>&1 >/dev/null`
    RES=$?
    echo "RUN: $var: $OUT"
done
date
sleep 1
kill $REDIS_PID
wait
