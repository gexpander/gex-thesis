#/bin/bash

if [[ "$1" == "" ]]; then
	echo "missing arg"
	exit
fi

echo "Processing $1"
sed -i "s/low cost/low-cost/g"
sed -i "s/general purpose/general-purpose/g"
sed -i "s/high level/high-level/g"
sed -i "s/low level/low-level/g"
sed -i "s/don't/do not/g"
sed -i "s/Don't/Do not/g"
sed -i "s/it's/it is/g"
sed -i "s/It's/It is/g"
sed -i "s/isn't/is not/g"
sed -i "s/aren't/are not/g"
sed -i "s/Aren't/Are not/g"
sed -i "s/wouldn't/would not/g"
sed -i "s/Wouldn't/Would not/g"
sed -i "s/couldn't/could not/g"
sed -i "s/Couldn't/Could not/g"
sed -i "s/shouldn't/should not/g"
sed -i "s/Shouldn't/Should not/g"
sed -i "s/can't/cannot/g"
sed -i "s/in recent years/recently/g"
sed -i "s/In recent years/Recently/g"
