<?php

require_once('../init.php');
$output = [];
$pid=$_REQUEST["pid"];

$sql="SELECT lid,family_id,title,subtitle,price,spec,product_id,listpic,listcolor FROM ysl_products join ysl_product_pic on ysl_products.lid=ysl_product_pic.product_id where family_id=$pid" ;
$result = mysqli_query($conn, $sql);
$output['deItems']=mysqli_fetch_all($result,MYSQLI_ASSOC);



echo json_encode($output);
