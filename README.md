# PHP Laravel版 本気の Docker サンプル 

## 環境セットアップ

### Laravel を使わない場合

1. docker-compose build
1. docker-compose up -d

### Laravel を使う場合

1. docker-compose build
1. docker-compose up -d
1. docker-compose exec php bash ../laravel.sh

#### Laravelを使う際の補足

DockerfileでPHPのバージョンを変更

- `learning` という名前のLaravelプロジェクトが作成されます。
- Laravelのバージョンを指定したい場合は `docker-compose.yml` にある `LARAVEL_VERSION` を修正してください。
- `LARAVEL_VERSION` を修正しない場合は最新バージョンのLaravelがインストールされます。
- 下記設定もしています。参考中のサイトと内容がかぶる場合は適宜読み飛ばしてください。
    - `artisan key:generate` の実行
    - storageのシンボリックリンク作成
    - MySQLの接続設定を上書き

.editorconfig
https://rfs.jp/sb/vsc/editorconfig.html

diff=php
https://daisuki.nichiyoubi.land/entry/2020/10/01/104101
