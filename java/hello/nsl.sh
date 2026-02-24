#!/bin/sh

if [ "$#" -eq 0 ]; then
    echo "usage) nsl indiflex.kr"
    echo "usage) nsl https://indiflex.kr"
    exit
fi

cd /Users/jade/workspace/hana8/java/hello

java src/main/java/com/hana8/hello/io/Nsl.java $1
