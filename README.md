## overview

dockerを利用して、nginx経由でgoサーバに接続する設定一式です  
おまけでmysqlも一緒に起動しています
## useage
以下のコマンドを実行することでホストにアクセスするとHelloと表示されます
```
git clone git@github.com:awisu2/dockerGoserver.git .
docker-compose up -d
```

### edit
godoを利用しているため、
go/src/app/main.goを編集すると自動的に編集が反映されます。  
とりあえずのテストとして利用する分にはこれでよいかと思います

### 開発したパッケージの利用

go/src/app/main.goを起点として、パッケージを読み込んで実行してください
