/****首页商品****/
CREATE TABLE ysl_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  pic_a VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);

/****首页商品****/
INSERT INTO ysl_index_product VALUES
(NULL, '彩妆', '红色是一种宣言，是存在的证明，是女性气质充满张力的演绎。', 'img/index/body1.jpg', 'img/index/body5.jpg', 1, 1, 1),
(NULL, '香水', '爱，是抛却一切的沉迷，甜蜜气息一旦触碰，便陷入天旋地转的张狂与...', 'img/index/body2.jpg','img/index/body6.jpg', 2, 2, 2),
(NULL, '护肤', '超模绝密系列，YSL的后台秘密，即刻水润，瞬时平滑。', 'img/index/body3.jpg', 'img/index/body8.jpg', 3, 3, 3),
(NULL, '尊享礼盒', '用YSL大胆说爱，把一切最好的都给TA', 'img/index/body4.jpg','img/index/body7.jpg', 4, 4, 4),
(NULL, 'YSL夏日轻唇饮', '如同盛夏橘子汽水的清爽愉悦，你的唇妆 同样要够夏天！跟随YSL 以前卫水感的唇妆 碰撞元气显白橘色，调制独属于你的夏日轻唇...', 'img/index/body9.jpg', NULL, 5, 5, 5),
(NULL, '以大胆唇色点亮妆容', '在YSL的色彩世界中，正红色优雅端庄，玫瑰色温柔知性，每种颜色都对着着不同的个性符号。今夏，YSL邀你一起打破常规，在唇妆中融入多重色...', 'img/index/body10.jpg', NULL, 6, 6, 6),
(NULL, '为双唇赋予更多魅力', '玩趣大胆，放肆激情，是Imagine Dragons的另类摇滚，也深深根植于YSL的DNA。他们为现代电子乐带来了彻底性的颠覆，这一点正如有双重功效的...', 'img/index/body11.jpg', NULL, 7, 7, 7);

