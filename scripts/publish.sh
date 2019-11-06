#!/usr/bin/env bash
set -eu

if [[ ! -z $(git status -s) ]]; then
    echo "git not clean, commit changes first"
    exit 1
fi

echo "-------------------------------------------"
echo 'Compiling site'

export HUGO_USE_ANALYTICS=true
hugo

PUBLIC=public
REMOTE_URL=$(git config --get remote.origin.url)
SOURCE_SHA=$(git rev-parse --short HEAD)

echo "-------------------------------------------"
echo 'Pushing to master'
rm -rf $PUBLIC/.git
git init $PUBLIC
git -C $PUBLIC checkout --orphan release
git -C $PUBLIC add .
git -C $PUBLIC commit --no-verify -m "Updated site to source @${SOURCE_SHA}"
git -C $PUBLIC remote add origin ${REMOTE_URL}
git -C $PUBLIC push --force origin release
