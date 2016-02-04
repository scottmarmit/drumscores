#!/bin/bash

filenames=()

if [ -z $1 ]; then
    for line in `git show --pretty=oneline --name-only HEAD`; do
        if [[ "$line" == *.abc ]]; then
            filenames+=("$line")
        fi
    done
else
    filenames+=$1
fi

for fname in ${filenames[@]}; do
    # abcm2ps -O= -F smarmit_abc_format.fmt $fname
    # pstopdf "${fname%.*}.ps"
    echo "Publishing ${fname%.*}.pdf to /Users/sarmit/Dropbox/KevinBarry/Drums/"
    cp "${fname%.*}.pdf" "/Users/sarmit/Dropbox/KevinBarry/Drums/"
done
