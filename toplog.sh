#!/bin/sh

while true; do
OUTPUT="$(top -b -n 1 | sed 's/  */,/g')"
TEST=$(echo "$OUTPUT" | sed 1,7d)
DATE=`date +%Y-%m-%d:%H:%M:%S`
echo "$TEST" | awk '{ print strftime("%Y-%m-%d %H:%M:%S"), $0; fflush(); }' >> top.log
sleep 5
done