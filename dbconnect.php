<?php
$db_link = mysqli_connect(
  "localhost",
  //MYSQL服务器地址
  "root",
  //MYSQL登录用户名
  "123456",
  //MYSQL登录密码（此处可根据实际情况修改）
  "hotel"
); //需要连接数据库名

if (!$db_link) {
  die("数据库连接错误: " . mysqli_connect_error());
}

//设置数据库编码
mysqli_query($db_link, "SET NAMES 'utf8'");

?>