<?php
require_once('../init.php');
$output = [];
$sql="SELECT fid,fname,fpic FROM ysl_family WHERE fid>0";
$result=mysqli_query($conn,$sql);
$output['navFname']=mysqli_fetch_all($result,1);


