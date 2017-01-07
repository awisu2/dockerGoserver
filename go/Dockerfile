FROM golang

MAINTAINER awisu2@gmail.com

# set timezone Japan
RUN echo "Asia/Tokyo" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# godoのインストール
RUN go get -u gopkg.in/godo.v2/cmd/godo

WORKDIR /go/src/app
