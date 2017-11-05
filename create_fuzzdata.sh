#!/bin/bash
echo "var fuzzdata = ["
for i in static/fuzz/*.*; do
	siz=$(identify $i[0] | cut -d " " -f 3)
	w=$(echo $siz | cut -d x -f 1)
	h=$(echo $siz | cut -d x -f 2)
echo "{ 'fn': '$i', 'w': $w, 'h': $h }, "
done
echo "];"
