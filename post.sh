#!/bin/bash
sort -m ./xa* | uniq -c > countsOfWords
rm shakespeare.tar
rm -r shakespeare
rm x*
