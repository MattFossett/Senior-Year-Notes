#!/usr/bin/env bash

# populateFiles numberedClass date

echo "#### _$2_" >> _includes/$1/$2.md
echo "* [$2](\#$2)" >> _includes/$1/links.md

echo "" >> $1/index.md
echo "***" >> $1/index.md
echo "" >> $1/index.md
echo "{% include /$1/$2.md %}" >> $1/index.md
echo "" >> $1/index.md
echo "*[Back to index](#$1)*" >> $1/index.md

