/**化妆品图片**/
CREATE TABLE ysl_product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,             #化妆品编号
  listpic  VARCHAR(128),      #化妆品列表图片
  listcolor VARCHAR(128),     #列表颜色图片
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);

/**化妆品图片**/
INSERT INTO ysl_product_pic VALUES
(NULL, 9, 'img/product/makeup/1527160417074.jpg','img/product/makeup/15271332033214019_238X265.jpg','img/product/makeup/sm/15271332033214019_110X110.jpg','img/product/makeup/md/15271332033214019_1000X1000.jpg',NULL),
(NULL, 2, 'img/product/makeup/1527669457833.jpg','img/product/makeup/15271520909293739_238X265.jpg','img/product/makeup/sm/15271520909293739_110X110.jpg','img/product/makeup/md/15271520909293739_1000X1000.jpg','img/product/makeup/lg/15294041654037933.jpg'),
(NULL, 2, 'img/product/makeup/1527669534967.jpg','img/product/makeup/15271525547687652_238X265.jpg','img/product/makeup/sm/15271525547687652_110X110.jpg','img/product/makeup/md/15271520909293739_1000X1000.jpg','img/product/makeup/lg/15294042077119777.jpg'),
(NULL, 2, 'img/product/makeup/1527669572966.jpg','img/product/makeup/15271527584335111_238X265.jpg','img/product/makeup/sm/15271527584335111_110X110.jpg','img/product/makeup/md/15271520909293739_1000X1000.jpg','img/product/makeup/lg/15294042215374663.jpg'),
(NULL, 4, 'img/product/makeup/1527670388258.jpg','img/product/makeup/1527503670672293_238X265.jpg','img/product/makeup/sm/15275022318938869_110X110.jpg','img/product/makeup/md/15275022318938869_1000X1000.jpg','img/product/lg/15305004035012200.jpg'),
(NULL, 4, 'img/product/makeup/1527670586071.jpg','img/product/makeup/15275027383249936_238X265.jpg','img/product/makeup/sm/15275022318938869_110X110.jpg','img/product/makeup/md/15275022318938869_1000X1000.jpg','img/product/lg/15305004276504807.jpg'),
(NULL, 4, 'img/product/makeup/1527670829713.jpg','img/product/makeup/15275035523119558_238X265.jpg',NULL,NULL,NULL),

(NULL, 25, 'img/product/makeup/1527678239579.jpg','img/product/makeup/15271575431478929_238X265.jpg','img/product/makeup/sm/15271578035767254_110X110.jpg','img/product/makeup/md/15271578035767254_1000X1000.jpg',NULL),
(NULL, 25, 'img/product/makeup/1527678268141.jpg','img/product/makeup/15271578035767254_238X265.jpg',NULL,NULL,NULL),
(NULL, 25, 'img/product/makeup/1527678402109.jpg','img/product/makeup/15271583837667538_238X265.jpg',NULL,NULL,NULL),
(NULL, 25, 'img/product/makeup/1527678558727.jpg','img/product/makeup/15271586441087795_238X265.jpg',NULL,NULL,NULL),

(NULL, 1, 'img/product/makeup/a1s.jpg','img/product/makeup/a1.jpg','img/product/makeup/sm/15300704942073876_110X110.jpg','img/product/makeup/md/15300704942073876_1000X1000.jpg',NULL),
(NULL, 1, 'img/product/makeup/a2s.jpg','img/product/makeup/a2.jpg',NULL,NULL,NULL),
(NULL, 1, 'img/product/makeup/a3s.jpg','img/product/makeup/a3.jpg',NULL,NULL,NULL),
(NULL, 1, 'img/product/makeup/a4s.jpg','img/product/makeup/a4.jpg',NULL,NULL,NULL),
(NULL, 1, 'img/product/makeup/a5s.jpg','img/product/makeup/a5.jpg',NULL,NULL,NULL),

(NULL, 6, 'img/product/makeup/1527672524103.jpg','img/product/makeup/15275857310364208_238X265.jpg','img/product/makeup/sm/15361443680644464_110X110.jpg','img/product/makeup/md/15361443680644464_1000X1000.jpg',NULL),
(NULL, 6, 'img/product/makeup/1527672576323.jpg','img/product/makeup/15275865558073527_238X265.jpg',NULL,NULL,NULL),
(NULL, 6, 'img/product/makeup/1527672773140.jpg','img/product/makeup/15275878269954072_238X265.jpg',NULL,NULL,NULL),

(NULL, 10, 'img/product/makeup/1527676133496.jpg','img/product/makeup/15275011000067087_238X265.jpg','img/product/makeup/sm/15275011000067087_110X110.jpg','img/product/makeup/md/15275011000067087_110X110.jpg',NULL),

(NULL, 11, 'img/product/makeup/1529492445882.jpg','img/product/makeup/1527504386418936_238X265.jpg','img/product/makeup/sm/152750383735213_110X110.jpg','img/product/makeup/md/152750383735213_1000X1000.jpg',NULL),

(NULL,31,NULL,'img/product/fragrance/15326790632412171_238X265.jpg','img/product/fragrance/sm/15275786747819969_110X110.jpg','img/product/fragrance/md/15275786747819969_1000X1000.jpg','img/product/fragrance/lg/15314625466863889.jpg'),
-- (NULL,31,NULL,NULL,'img/product/fragrance/sm/15307842276107383_110X110.jpg','img/product/fragrance/md/15307842276107383_500X500.jpg','img/product/fragrance/lg/15314625658807097.jpg'),
(NULL,32,'img/product/fragrance/sm/15271610063533353_110X110.jpg','img/product/fragrance/15271610063533353_238X265.jpg','img/product/fragrance/sm/15271610063533353_110X110.jpg','img/product/fragrance/md/15271610063533353_1000X1000.jpg','img/product/fragrance/lg/15317378707719756.jpg'),
(NULL,33,'img/product/fragrance/sm/15302408824927994_110X110.jpg','img/product/fragrance/15302408824927994_238X265.jpg','img/product/fragrance/sm/15302408824927994_110X110.jpg','img/product/fragrance/md/15302408824927994_1000X1000.jpg',NULL),
-- (NULL,33,NULL,NULL,'img/product/fragrance/sm/15302408798465935_110X110.jpg','img/product/fragrance/md/15302408798465935_1000X1000.jpg',NULL),
(NULL,34,'img/product/fragrance/sm/152757867478199619_110X110.jpg','img/product/fragrance/15275018195371831_238X265.jpg','img/product/fragrance/sm/152757867478199619_110X110.jpg','img/product/fragrance/md/15275018195371831_1000X1000.jpg',NULL),
(NULL,37,'img/product/fragrance/sm/15275786747819969_110X110.jpg','img/product/fragrance/15275786747819969_238X265.jpg','img/product/fragrance/sm/15275786747819969_110X110.jpg','img/product/fragrance/md/15275786747819969_1000X1000.jpg',NULL),
(NULL,38,"img/product/fragrance/sm/15271610063533353_110X110.jpg",'img/product/fragrance/15271610063533353_238X265.jpg','img/product/fragrance/sm/15271610063533353_110X110.jpg','img/product/fragrance/md/15271610063533353_1000X1000.jpg',NULL),


(NULL,27,'img/product/skincare/sm/15275793188264347_110X110.jpg','img/product/skincare/15275793188264347_238X265.jpg','img/product/skincare/sm/15275793188264347_110X110.jpg','img/product/skincare/md/15275793188264347_500X500.jpg',NULL),
(NULL,28,'img/product/skincare/sm/15275792836514249_110X110.jpg','img/product/skincare/15275792836514249_238X265.jpg','img/product/skincare/sm/15275792836514249_110X110.jpg','img/product/skincare/md/15275792836514249_1000X1000.jpg',NULL),
(NULL,29,"img/product/skincare/sm/1527159677509938_110X110.jpg",'img/product/skincare/1527159677509938_238X265.jpg','img/product/skincare/sm/1527159677509938_110X110.jpg','img/product/skincare/md/1527159677509938_1000X1000.jpg',NULL),
(NULL,30,'img/product/skincare/sm/15305042145138349_110X110.jpg','img/product/skincare/15305042145138349_238X265.jpg','img/product/skincare/sm/15305042145138349_110X110.jpg','img/product/skincare/md/15305042145138349_500X500.jpg',NULL),
(NULL,35,'img/product/skincare/sm/15275793188264347_110X110.jpg','img/product/skincare/15275793188264347_238X265.jpg','img/product/skincare/sm/15275793188264347_110X110.jpg','img/product/skincare/md/15275793188264347_500X500.jpg',NULL),
(NULL,36,'img/product/skincare/sm/15275792836514249_110X110.jpg','img/product/skincare/15275792836514249_238X265.jpg','img/product/skincare/sm/15275792836514249_110X110.jpg','img/product/skincare/md/15275792836514249_1000X1000.jpg',NULL),

(NULL,40,'img/product/lihe/1532512893136.jpg','img/product/lihe/15325737232631436_238X265.jpg','img/product/lihe/1532573693798158_110X110.jpg','img/product/lihe/1532573693798158_1000X1000.jpg',NULL),
(NULL,40,'img/product/lihe/1532512908513.jpg','img/product/lihe/15325737227291153_238X265.jpg',
'img/product/lihe/15330209376254993_110X110.jpg','img/product/lihe/15330209376254993_1000X1000.jpg',NULL),
(NULL,40,'img/product/lihe/1532512921118.jpg','img/product/lihe/1532573725409490_238X265.jpg',
'img/product/lihe/1532573693798158_110X110.jpg','img/product/lihe/1532573693798158_1000X1000.jpg',NULL),
(NULL,40,'img/product/lihe/1532512947191.jpg','img/product/lihe/1532573693798158_238X265.jpg',
'img/product/lihe/1532573693798158_110X110.jpg','img/product/lihe/1532573693798158_1000X1000.jpg',NULL),
(NULL,41,'img/product/lihe/1527677446888.jpg','img/product/lihe/15287099938695562_238X265.jpg',
'img/product/lihe/15287097688516200_110X110.jpg','img/product/lihe/15287097688516200_1000X1000.jpg',NULL),
(NULL,42,'img/product/lihe/1527677446888.jpg','img/product/lihe/15286935841531406_238X265.jpg',
'img/product/lihe/15286935841531406_110X110.jpg','img/product/lihe/15286935841531406_1000X1000.jpg',NULL),
(NULL,43,'img/product/lihe/1527677446888.jpg','img/product/lihe/15330442302465965_238X265.jpg',
'img/product/lihe/15330442302465965_110X110.jpg','img/product/lihe/15330442302465965_1000X1000.jpg',NULL),

(NULL,19,'img/product/makeup/1527678655098.png','img/product/makeup/15271604549121166_238X265.jpg',
'img/product/makeup/sm/15271603559554188_110X110.jpg','img/product/makeup/md/15271603559554188_1000X1000.jpg',NULL),
(NULL,19,'img/product/makeup/1527678666114.jpg','img/product/makeup/15271605683144160_238X265.jpg',
'img/product/makeup/sm/15271603559554188_110X110.jpg','img/product/makeup/md/15271603559554188_1000X1000.jpg',NULL),
(NULL,19,'img/product/makeup/1527678684558.jpg','img/product/makeup/15271606973917522_238X265.jpg',
'img/product/makeup/sm/15271603559554188_110X110.jpg','img/product/makeup/md/15271603559554188_1000X1000.jpg',NULL),

(NULL,21,'img/product/makeup/1527678779493.jpg','img/product/makeup/15277629834818119_238X265.jpg',
'img/product/makeup/sm/15277630496451168_110X110.jpg','img/product/makeup/md/15277630496451168_1000X1000.jpg',NULL),
(NULL,21,'img/product/makeup/1527678788232.jpg','img/product/makeup/15277630171075029_238X265.jpg',
'img/product/makeup/sm/15277630171075029_110X110.jpg','img/product/makeup/md/15277630171075029_1000X1000.jpg',NULL),

(NULL,14,'img/product/makeup/1527674108737.jpg','img/product/makeup/15277631960493982_238X265.jpg',
'img/product/makeup/sm/15277632027017876_110X110.jpg','img/product/makeup/md/15277632027017876_1000X1000.jpg',NULL),

(NULL,12,'img/product/makeup/1529492445882.jpg','img/product/makeup/15304214775442437_238X265.jpg',
'img/product/makeup/sm/15277630496451168_110X110.jpg','img/product/makeup/md/15277630496451168_1000X1000.jpg',NULL),
(NULL,22,'img/product/makeup/1527680302965.jpg','img/product/makeup/15275790789618144_238X265.jpg',
'img/product/makeup/sm/15275791037704419_110X110.jpg','img/product/makeup/md/15275791037704419_1000X1000.jpg',NULL),
(NULL,22,'img/product/makeup/1527680311537.jpg','img/product/makeup/15275791037704419_238X265.jpg',
'img/product/makeup/sm/15275791037704419_110X110.jpg','img/product/makeup/md/15275791037704419_1000X1000.jpg',NULL),

(NULL,22,'img/product/makeup/1527678748523.jpg','img/product/makeup/15271510389263156_238X265.jpg',
'img/product/makeup/sm/15271510389263156_110X110.jpg','img/product/makeup/md/15271510389263156_1000X1000.jpg',NULL),

(NULL,23,'img/product/makeup/1527678748523.jpg','img/product/makeup/15271510389263156_238X265.jpg',
'img/product/makeup/sm/15271510389263156_110X110.jpg','img/product/makeup/md/15271510389263156_1000X1000.jpg',NULL),

(NULL,3,'img/product/makeup/1527672576323.jpg','img/product/makeup/15287049595817817_238X265.jpg',
'img/product/makeup/sm/15287049595817817_110X110.jpg','img/product/makeup/md/15287049595817817_1000X1000.jpg',NULL),
(NULL, 5, 'img/product/makeup/a1s.jpg','img/product/makeup/a1.jpg','img/product/makeup/sm/15300704942073876_110X110.jpg','img/product/makeup/md/15300704942073876_1000X1000.jpg',NULL),
(NULL, 5, 'img/product/makeup/a2s.jpg','img/product/makeup/a2.jpg',NULL,NULL,NULL),
(NULL, 5, 'img/product/makeup/a3s.jpg','img/product/makeup/a3.jpg',NULL,NULL,NULL),
(NULL, 5, 'img/product/makeup/a4s.jpg','img/product/makeup/a4.jpg',NULL,NULL,NULL),
(NULL, 5, 'img/product/makeup/a5s.jpg','img/product/makeup/a5.jpg',NULL,NULL,NULL),

(NULL,8,'img/product/makeup/1528959374806.jpg','img/product/makeup/15304329669981854_238X265.jpg',
'img/product/makeup/sm/15304329669981854_110X110.jpg','img/product/makeup/md/15304329669981854_1000X1000.jpg',NULL),

(NULL,13,'img/product/makeup/1528716798329.jpg','img/product/makeup/15294906124817157_238X265.jpg',
'img/product/makeup/sm/15294906124817157_110X110.jpg','img/product/makeup/md/15294906124817157_1000X1000.jpg',NULL),

(NULL,16,'img/product/makeup/1527679332865.jpg','img/product/makeup/15277634285571203_238X265.jpg',
'img/product/makeup/sm/15277634285571203_110X110.jpg','img/product/makeup/md/15277634285571203_1000X1000.jpg',NULL),

(NULL,15,'img/product/makeup/1527673995857.jpg','img/product/makeup/15277632821289979_238X265.jpg',
'img/product/makeup/sm/15277632821289979_110X110.jpg','img/product/makeup/md/15277632821289979_1000X1000.jpg',NULL),

