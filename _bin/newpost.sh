#!/bin/bash

mou="/Applications/Mou.app/Contents/MacOS/Mou"

underscored_name=$(echo $1 | sed -e 's/ /_/g' | awk '{print tolower($0)}')

filename=$(date +%F)-$underscored_name.md
target=_posts/$filename
echo '---' > $target
echo  >> $target
echo 'layout: post' >> $target
echo 'title: "'$1'"' >> $target
echo "date: $(date +%F)" >> $target
echo 'categories: announcements' >> $target
echo  >> $target
echo "---" >> $target


$mou $target
