#!/bin/bash

# task2.sh

grep -l "sample" file* | while read file; do
  count=$(grep -o "CSC510" "$file" | wc -l)
  if [ "$count" -ge 3 ]; then
    echo "$count $file"
  fi
done | sort -rn | uniq -c | sort -rn | while read count occurrences file; do
  ls -l "$file" | gawk '{print $5, $NF}' | while read size filename; do
    echo "$occurrences $size $filename" | sed 's/file_/filtered_/'
  done
done | sort -k1,1nr -k2,2nr