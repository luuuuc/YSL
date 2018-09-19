<?php
//data/courses/getCoursesById.php
require_once("../init.php");
$sql="SELECT img,title,href FROM `ysl_carousel`";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));