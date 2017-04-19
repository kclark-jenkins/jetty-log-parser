#!/bin/sh
HEADER="CLIENT,UNKNOWN1,UNKNOWN2,TIMESTAMP,METHOD,RESULT,SIZE" > ofile.txt
LOGS=$(cat ./*request.log | tr -s '[:blank:]' ',')

echo "$HEADER\n$LOGS" |sed 's/,\([^,]*\)$/ \1/' > ofile.txt