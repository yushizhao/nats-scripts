#!/bin/bash

pids=`ps -ef | grep nats-server | grep -v grep | awk '{print $2}'`

for pid in $pids
do
    echo "stop nats-server ["$pid"]..."
    kill $pid
done