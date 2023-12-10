#!/bin/bash

ffconvert () {

fontforge -lang=ff -c 'Open($1); Generate($2)' "$1" "$2"

}

for f in *.pfb ; do
   ffconvert "$f" "${f%.pfb}.otf"
   ffconvert "$f" "${f%.pfb}.ttf"
done

mkdir OTF
mkdir TTF
mkdir TYPE1

mv *.otf ./OTF
mv *.ttf ./TTF
mv *.pfb ./TYPE1
mv *.pfm ./TYPE1

echo "Convertidas de formato PS TYPE1 con FontForge por JTL" > ./OTF/info.txt
echo "Convertidas de formato PS TYPE1 con FontForge por JTL" > ./TTF/info.txt

