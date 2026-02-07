#!/bin/bash

OUTPUT="hello.bin"

printf "arg1\0arg2\0arg3\0" > "$OUTPUT"

echo "Generated $OUTPUT"
