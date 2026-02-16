#!/bin/bash

for i in {1..60}
do
    timestamp=$(date +"%H:%M:%S")

    case $((i % 6)) in
        0) echo "[$timestamp] [  ${i}%] Building CXX object frameworks/base/core/libcore.so" ;;
        1) echo "[$timestamp] [  ${i}%] Compiling Java sources..." ;;
        2) echo "[$timestamp] [  ${i}%] Running dexer (D8)..." ;;
        3) echo "[$timestamp] [  ${i}%] Merging resources..." ;;
        4) echo "[$timestamp] [  ${i}%] Packaging APK..." ;;
        5) echo "[$timestamp] [  ${i}%] Generating build artifacts..." ;;
    esac

    sleep 1
done

echo "[$(date +"%H:%M:%S")] BUILD SUCCESSFUL"
