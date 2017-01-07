CREATE DATABASE foo DEFAULT CHARACTER SET utf8;

use foo;

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
