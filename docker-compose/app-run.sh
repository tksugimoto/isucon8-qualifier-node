#!/bin/bash

set -ex

cd /tmp/webapp/

. ./env.sh

export DB_DATABASE
# DBとAPPが同一コンテナではないので、docker-composeのservice名でDBへ接続
export DB_HOST=db
export DB_PORT
export DB_USER
export DB_PASS


cd nodejs

# FIXME: git差分で出る問題
rm ./public
ln --symbolic ../static ./public

npm install
npm run build

node index.js
