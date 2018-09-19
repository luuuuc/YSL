CREATE TABLE ysl_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);

/**化妆品型号家族**/
INSERT INTO ysl_family VALUES
(NULL,'彩妆'),
(NULL,'护肤'),
(NULL,'香水'),
(NULL,'明星产品'),
(NULL,'尊享礼盒'),
(NULL,'会员中心'),
(NULL,'私人订制服务');



/**彩妆makeup**/
CREATE TABLE ysl_makeup(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,
  mname VARCHAR(32)
);
INSERT INTO ysl_makeup VALUES
(NULL,'1','唇部'),
(NULL,'1','面部'),
(NULL,'1','眼部'),
(NULL,'1','甲油'),
(NULL,'1','套装及工具');

/*护肤skincare*/
CREATE TABLE ysl_skincare(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,
  mname VARCHAR(32)
);
INSERT INTO ysl_skincare VALUES
(NULL,'1','按产品分类'),
(NULL,'2','按功能分类'),
(NULL,'3','按系列分类');
