<?php
/**
* 向首页提供必需的数据，包括轮播广告、首页推荐、最新上架、热销单品
* 返回数据形如：
  {
    carouselItems: [ ],
    recommendedItems: [ ],
    newArrialItems: [ ],
    topSaleItems: [ ]
  }
*/
require_once('../init.php');
$output = [];
$pid=$_REQUEST["pid"];
//2楼 

$sql = "SELECT pid,title,details,pic,pic_a FROM ysl_index_product WHERE seq_recommended>0 ORDER BY seq_recommended  LIMIT 4";
$result = mysqli_query($conn, $sql);
$output['beautyItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

//4楼
$sql="SELECT pid,title,details,pic,pic_a FROM ysl_index_product WHERE seq_recommended>0 ORDER BY seq_recommended  LIMIT 4,3";
$result = mysqli_query($conn, $sql);
$output['inspirationItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

//1楼
$sql="SELECT fid,fname,fpic FROM ysl_family WHERE fid>0 LIMIT 4";
$result=mysqli_query($conn,$sql);
$output['fidItems']=mysqli_fetch_all($result,1);


$sql="SELECT lid,family_id,title,subtitle,price,spec,product_id,listpic,listcolor FROM ysl_products join ysl_product_pic on ysl_products.lid=ysl_product_pic.product_id where family_id=$pid and show_index=1 " ;
$result = mysqli_query($conn, $sql);
$output['deItems']=mysqli_fetch_all($result,MYSQLI_ASSOC);

// $sql="SELECT product_id,listpic,listcolor FROM ysl_product_pic"; 
// $result=mysqli_query($conn,$sql);
// $output['deItems']['dePic']=mysqli_fetch_all($result,MYSQLI_ASSOC);

echo json_encode($output);
