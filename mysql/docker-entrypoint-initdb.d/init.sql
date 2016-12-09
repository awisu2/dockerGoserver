CREATE DATABASE hoge DEFAULT CHARACTER SET utf8;

use hoge;

CREATE TABLE person (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  name CHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO person VALUES
(1, 'first'),
(2, 'second'),
(3, 'therd'),
(4, 'fource');

CREATE TABLE scraping (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  url VARCHAR(256) COMMENT '取得対象のURL',
  pattern_id int COMMENT '取得したデータの解析パターンid(scraping_pattern table)',
  detail VARCHAR(300) COMMENT 'このスクレイピングの説明',
  to_id int COMMENT '解析後の処理パターン',
  PRIMARY KEY (id)
);

CREATE TABLE scrf_token (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  token VARCHAR(256) NOT NULL UNIQUE COMMENT 'scrf token',
  enable bool NOT NULL DEFAULT FALSE COMMENT 'enable flag',
  PRIMARY KEY (id),
  key token_index(token)
);

