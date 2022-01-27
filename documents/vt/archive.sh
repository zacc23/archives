#!/bin/sh
upper=~/documents
dir=vt
ext=tar.gz.dat
archive='git --git-dir=$HOME/.archives --work-tree=$HOME'
#tpm show vt_dat

cd "$upper"
tar cz "$dir" | openssl enc -aes-256-cbc -pbkdf2 -out "$dir"."$ext"
split -b 50MB "$dir"."$ext" "$dir"."$ext".

"$archive" add "$upper"/vt.tar.gz.dat.*
"$archive" commit -m 'update vt archives'
"$archive" push
