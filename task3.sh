#!/bin/bash

gawk -F, ' $3==2 && $12==S { print $0 } ' titanic.csv | sed 's/female/F/g' | sed 's/male/M/g' | gawk -F, ' {sum += $7; count++} END {print sum/count}'