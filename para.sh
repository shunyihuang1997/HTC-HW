#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo "usage: $0 <file>"
    exit 0
fi

file=$1

tr ' ' '\n' < $file > new$file

sort new$file > $file

rm new$file
