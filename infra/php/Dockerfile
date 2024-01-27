# イメージのベースを指定
FROM php:8.3-fpm

# php.iniをコピー
COPY ./php.ini /usr/local/etc/php/php.ini

# apt-get update　パッケージ管理ツールの更新
RUN apt-get update \
	# パッケージやPHP拡張モジュールをインストール
    && apt-get install -y \
    git \
    zip \
    unzip \
    vim \
    && docker-php-ext-install pdo_mysql bcmath
# phpコンテナに入った時の作業ディレクトリを指定
WORKDIR /var/www/html
