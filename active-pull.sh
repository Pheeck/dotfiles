#!/bin/bash

set -ueo pipefail

cd "$HOME/active"

for folder in *; do
    echo "Pulling $folder..."
    cd "$folder"
    git pull || : # Allow pull to fail
    cd ..
    echo
done
