#/bin/bash

for i in ./* # iterate over all files in current dir
do
    if [ -d "$i" ] # if it's a directory
    then
        cd "$i" # copy a.txt into it
        echo "FontFolio 11" > info.txt
        cd ..
    fi
done
