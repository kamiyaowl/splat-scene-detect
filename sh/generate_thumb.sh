#!/bin/sh

if [ $# -ne 2 ]; then
    echo "usage: ./generate_thumb.sh src_dir dst_dir."
    exit 0
fi

src_dir=$1
dst_dir=$2

for filepath in `find $src_dir -type f \( -name "*.flv" -o -name "*.mp4" -o -name "*.avi" \)`
do
    filename="${filepath##*/}"
    filename_noext="${filename%.*}"
    ffmpeg -i $filepath -vf thumbnail=30,scale=640:-1 -sws_flags lanczos -an -vsync 0 $dst_dir/$filename_noext-%08d.jpg
done

echo "Done."
exit 0