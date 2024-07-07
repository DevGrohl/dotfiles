#!/bin/bash

#put this file to ~/.ncmpcpp/

MUSIC_DIR=$HOME/Music #path to your music dir

COVER=/tmp/cover.jpg

echo "Music Dir: " $MUSIC_DIR
echo "Cover: " $COVER

function reset_background {
	printf "\e]20;;100x100+1000+1000\a"
}

{
	album="$(mpc --format %album% current)"
	file="$(mpc --format %file% current)"
	album="${album// /\\ }"
	echo "Album: " $album
	echo "File: " $file
	album_dir="${file%/*}"
	echo $album_dir
	[[ -z "$album_dir" ]] && exit 1
	album_dir="$MUSIC_DIR/$album_dir"
	album_dir="${album_dir// /\ }"
	echo $album_dir

	echo "Directory: " $album_dir

	covers="$(find "$album_dir" -name "*.jpg")"
	echo "Covers: " $covers
	src="$(echo -n "$covers" | head -n1)"
	rm -f "$COVER"
	echo "SRC: " $src
	if [[ -n "$src" ]]; then
		#resize the image's width to 300px
		convert "$src" -resize 300x "$COVER"
		echo "final: " $COVER
		if [[ -f "$COVER" ]]; then
			#scale down the cover to 30% of the original
			echo "Printing"
			printf "\e]20;${COVER};70x70+0+00:op=keep-aspect\a"
		else
			reset_background
		fi
	else
		reset_background
	fi
} &
