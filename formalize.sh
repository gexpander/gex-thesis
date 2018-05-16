#/bin/bash

if [[ "$1" == "" ]]; then
	echo "missing arg"
	exit
fi

echo "Processing $1"
sed -i "s/\blow cost\b/low-cost/g" "$1"
sed -i "s/\bgeneral purpose\b/general-purpose/g" "$1"
sed -i "s/\bhigh level\b/high-level/g" "$1"
sed -i "s/\blow level\b/low-level/g" "$1"
sed -i "s/\bdon't\b/do not/g" "$1"
sed -i "s/\bDon't\b/Do not/g" "$1"
sed -i "s/\bit's\b/it is/g" "$1"
sed -i "s/\bIt's\b/It is/g" "$1"
sed -i "s/\bisn't\b/is not/g" "$1"
sed -i "s/\baren't\b/are not/g" "$1"
sed -i "s/\bAren't\b/Are not/g" "$1"
sed -i "s/\bwouldn't\b/would not/g" "$1"
sed -i "s/\bWouldn't\b/Would not/g" "$1"
sed -i "s/\bcouldn't\b/could not/g" "$1"
sed -i "s/\bCouldn't\b/Could not/g" "$1"
sed -i "s/\bshouldn't\b/should not/g" "$1"
sed -i "s/\bShouldn't\b/Should not/g" "$1"
sed -i "s/\bcan't\b/cannot/g" "$1"
sed -i "s/\bin recent years\b/recently/g" "$1"
sed -i "s/\bIn recent years\b/Recently/g" "$1"

git diff --word-diff "$1"
