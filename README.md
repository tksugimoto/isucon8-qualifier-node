# [ISUCON8](http://isucon.net/archives/52388756.html "http://isucon.net/archives/52388756.html") 予選 nodejs アプリ

※ 動作確認用

## 起動方法
1. docker, docker-composeをインストール
1. `docker-compose up -d`
1. http://127.0.0.1:8080/ にアクセス

## portの変更方法
1. [`.env.sample`](./.env.sample) を `.env` に名前を変更してコピー
    ```
    cp .env.sample .env
    ```
1. `.env` を 必要に応じて変更

## 既知の問題
* `/initialize` でDB初期化できない
    * コンテナをDBとAppで分けているため
* 実行すると [webapp/nodejs/public](./webapp/nodejs/public) にgit差分が生じる
    * シンボリックリンクのため
