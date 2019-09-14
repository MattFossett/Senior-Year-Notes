#!/usr/bin/env bash
# populateFiles numberedClass date [optional- any char specifies sound file inclusion]
# Designed to populate .md files with information for notes site

echo "#### _$2_" >> _includes/$1/$2.md
if [ $# -eq 3 ]
    then 
        echo "<audio controls>" >> _includes/$1/$2.md
        echo "  <source src=\"/Audio/$1-$2.mp3\" type=\"audio/mpeg\">" >> _includes/$1/$2.md
        echo "Your browser does not support the audio element.</audio>" >> _includes/$1/$2.md
fi
echo "* [$2](#$2)" >> _includes/$1/links.md

echo "" >> $1/index.md
echo "***" >> $1/index.md
echo "" >> $1/index.md
echo "{% include /$1/$2.md %}" >> $1/index.md
echo "" >> $1/index.md
echo "*[Back to index](#$1)*" >> $1/index.md
