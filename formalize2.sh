#/bin/bash

if [[ "$1" == "" ]]; then
	echo "missing arg"
	exit
fi

echo "Processing $1"
sed -i 's/ \\ref/~\\ref/g' "$1"
sed -i 's/ \cite/~\cite/g' "$1"

git diff --word-diff "$1"
