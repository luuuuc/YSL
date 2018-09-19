SET NAMES UTF8;
DROP DATABASE IF EXISTS ysl;
CREATE DATABASE ysl CHARSET=UTF8;
USE ysl;

/****首页轮播广告商品****/
CREATE TABLE ysl_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****首页轮播广告商品****/
INSERT INTO ysl_carousel VALUES
(NULL, 'img/carousel/banner1.jpg','圣罗兰莹亮纯魅液体唇膏','product_details.html?lid=1'),
(NULL, 'img/carousel/banner2.jpg','圣罗兰反转巴黎女士香水','product_details.html?lid=2'),
(NULL, 'img/carousel/banner3.jpg','圣罗兰明彩亮润轻垫粉底液','product_details.html?lid=3'),
(NULL, 'img/carousel/banner4.jpg','激情纵吻',NULL);