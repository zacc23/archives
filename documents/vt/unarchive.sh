#!/bin/sh
upper=~/documents
dir=vt
ext=tar.gz.dat
#tpm show vt_dat

cd "$upper"
cat "$dir"."$ext".* "$dir"."$ext"
tar xz "$dir"."$ext" | openssl dec -aes-256-cbc -pbkdf2 -out "$dir"
