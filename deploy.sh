#!/usr/bin/env sh
set -e

npm run build

cd dist
git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/louislab/easy-parking.git main:gh-pages

cd -