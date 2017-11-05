#!/bin/bash

cd assets_src/

find PNG GIF -type f | while read i; do
	ext=$(echo $i | rev | cut -d \. -f 1 | rev)
	newname="croptest/"$(echo $i | md5sum | cut -b 1-8 )".$ext"
	echo "$i -> $newname"
	convert -trim "$i" "$newname"
	pngquant -s 1 --ext .png --force --skip-if-larger -v -- "$newname"
done

echo "now copy generated fuzz images to static/fuzz/"
