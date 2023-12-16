#/bin/bash

for i in ./* # iterate over all files in current dir
do
    if [ -d "$i" ] # if it's a directory
    then
        cd "$i" # copy a.txt into it
        echo "Adobe Mega Font Pack" > info.txt
        echo "Converted from PFB by JTL" > conv.txt
        mkdir OTF
        mv *.otf ./OTF
        mkdir TTF
        mv *.ttf ./TTF
        mkdir TYPE2
        mv *.PFB ./TYPE2
        mv *.PFM ./TYPE2
        cd ..
    fi
done
