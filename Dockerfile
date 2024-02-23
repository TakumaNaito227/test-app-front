FROM node:16.13.1-alpine

ARG WORKDIR
ARG API_URL

ENV HOME=/${WORKDIR} \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
	# コンテナのNuxt.jsをブラウザから参照するため
    HOST=0.0.0.0 \
	API_URL=${API_URL}

WORKDIR ${HOME}

# package.jsonとyarn.lockをコピーしてからyarn installを実行する
COPY package*.json ./
RUN yarn install

# コンテナにNuxtプロジェクトをコピー
COPY . ./

# ビルド
RUN yarn run build