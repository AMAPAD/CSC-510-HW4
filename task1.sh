#!/bin/bash

kill $(ps aux | grep '[s]h infinite.sh' | gawk ' {print $2} ')