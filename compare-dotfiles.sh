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
