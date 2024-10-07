#!/bin/bash

grep -l "sample" file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then echo "$count $(wc -c < "{}") {}"; fi' | sort -k1,1nr -k2,2nr | sed 's/file_/filtered_/'