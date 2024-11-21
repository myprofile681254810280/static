#!/bin/bash
template="$1"
patch="$2"
echo $template $patch
rm "$template$patch" -r
mkdir "$template$patch"
cd "$template$patch"
cp "/usr/share/Kvantum/$template/$template.kvconfig" "./k" 
cp "/usr/share/Kvantum/$template/$template.svg" "./s" 

patch -i "../patch/$patch.patch"
mv k "$template$patch.kvconfig"
mv s "$template$patch.svg"
cd ..

