#!/bin/bash

set -ueo pipefail

if [ "$#" -lt 1 ]; then
    echo "Commit message required"
    echo "Usage: active-push.sh commit-message"
    exit 1
fi
message="$1"

cd "$HOME/active"

for folder in *; do
    echo "Uploading $folder..."
    cd "$folder"

    # If some git command fails, this whole () block will get skipped
    (
        git add .
        git commit -m "$message"
        git push
    ) || :

    cd ..
    echo
    echo
done
