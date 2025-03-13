#!/bin/bash

set -ueo pipefail

cd HOME
for file in $( find -type f ); do
    if ! diff "$file" "$HOME/$file" --color=auto; then
        echo
        echo Differences in "$file"
        echo
        echo
    fi
done

tmp1=$( mktemp )
tmp2=$( mktemp )
cd bin
find | sort > "$tmp1"
cd ~/bin
find | sort > "$tmp2"

if ! diff "$tmp1" "$tmp2"; then
    echo
    echo Some scripts are missing
    echo
    echo
fi
