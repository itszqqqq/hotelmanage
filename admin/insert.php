﻿<?php
require("../dbconnect.php");
//大堂入住
if ($_POST["action"] == "inserto") {
  // 首先检查卡号是否存在
  $card = $_POST["card"];
  $query = "SELECT COUNT(*) AS count FROM customer WHERE cardid = '$card'";
  $result = mysqli_query($db_link, $query) or die("查询失败");
  $row = mysqli_fetch_assoc($result);

  if ($row['count'] == 0) {
    // 卡号不存在，执行插入操作
    $name = $_POST["name"];
    $phone = $_POST["phone"];

    $sql = "INSERT INTO customer (cardid, linkman, phone) VALUES ('$card', '$name', '$phone')";
    mysqli_query($db_link, $sql) or die("在customer表中插入记录失败");
  }

  //在orders表中插入一条记录
  $money = (int) $_POST["days"] * (int) $_POST["price"];
  $sql = "insert into orders (orderid,roomid,cardid,entertime,days,typeid,ostatus,oremarks,monetary,messages) values('" . date('his') . "','" . $_POST["roomid"] . "','" . $_POST["card"] . "','" . $_POST["checkin"] . "','" . $_POST["days"] . "','" . $_POST["typeid"] . "','否','否','" . $money . "','" . $_POST["content"] . "')";
  mysqli_query($db_link, $sql) or die("在orders表中插入记录失败");

  //更新roomtype表中leftunm字段
  $sql2 = "update roomtype set leftnum=leftnum-1 where typeid='" . $_POST["typeid"] . "'";
  mysqli_query($db_link, $sql2) or die("更新roomtype表中leftunm字段失败");

  echo "<script language=javascript>alert('大堂入住成功');window.location='admin_addn.php'</script>";
}

//新增房型
if ($_POST["action"] == "insertt") {
  $sql = "insert into roomtype (typename,area,hasNet,hasTV,price,totalnum,leftnum) values('" . $_POST["typename"] . "','" . $_POST["area"] . "','" . $_POST["hasNet"] . "','" . $_POST["hasTV"] . "','" . $_POST["price"] . "','" . $_POST["totalnum"] . "','" . $_POST["totalnum"] . "')";
  $arr = mysqli_query($db_link, $sql);
  if ($arr) {
    echo "<script language=javascript>alert('新增房型成功！');window.location='admin_addt.php'</script>";
  } else {
    echo "<script>alert('新增房型失败');history.go(-1);</script>";
  }
}

//新增房间
if ($_POST["action"] == "inserth") {
  $date = date('Ymdhis'); //得到当前时间
  $fileName = $_FILES['file']['name']; //得到上传文件的名字
  $name = explode('.', $fileName); //将文件名以'.'分割得到后缀名,得到一个数组
  $newPath = $date . '.' . $name[1];
  if (file_exists("../images/" . $newPath)) {
    echo "<script>alert('图片名已经存在');history.go(-1);</script>";
  } else {
    move_uploaded_file($_FILES["file"]["tmp_name"], iconv("UTF-8", "gb2312", "../images/" . $newPath));

    $roomid = $_POST["roomid"];
    // 检查是否存在具有相同房间编号的记录
    $sql1 = "SELECT COUNT(*) FROM room WHERE roomid = '$roomid'";
    $result = mysqli_query($db_link, $sql1);
    $count = mysqli_fetch_array($result)[0];
    // 如果记录已经存在，则输出错误信息并终止脚本
    if ($count > 0) {
      echo "<script>alert('新增房间失败，该房间编号已被使用');history.go(-1);</script>";
      exit;
    }

    // 检查房间ID是否超过四位数
    $roomid = $_POST["roomid"];
    if (strlen($roomid) > 4) {
      echo "<script>alert('房间ID超过四位数，请截取前四位！');history.go(-1);</script>";
      exit;
    }

    // 执行插入操作
    $sql = "INSERT INTO room (roomid, typeid, status, pic, remarks) VALUES ('" . $roomid . "', '" . $_POST["typeid"] . "', '" . $_POST["status"] . "', '" . $newPath . "', '" . @$_POST["remarks"] . "')";
    $arr = mysqli_query($db_link, $sql);

    if ($arr) {
      // 更新roomtype表中totalnum字段
      $sql2 = "UPDATE roomtype SET totalnum = totalnum + 1 WHERE typeid='" . $_POST["typeid"] . "'";
      mysqli_query($db_link, $sql2) or die("更新roomtype表中totalnum字段失败");

      // 更新roomtype表中leftnum字段
      $sql3 = "UPDATE roomtype SET leftnum = leftnum + 1 WHERE typeid='" . $_POST["typeid"] . "'";
      mysqli_query($db_link, $sql3) or die("更新roomtype表中leftnum字段失败");

      echo "<script>alert('新增房间成功！');window.location='admin_addh.php'</script>";
    } else {
      echo "<script>alert('新增房间失败');history.go(-1);</script>";
    }
  }
}
//新增相册
if ($_POST["action"] == "insertx") {
  $date = date('Ymdhis'); //得到当前时间
  $fileName = $_FILES['file']['name']; //得到上传文件的名字
  $fileNames = $_FILES['files']['name'];
  $name = explode('.', $fileName);
  $names = explode('.', $fileNames);
  //将文件名以'.'分割得到后缀名,得到一个数组
  $newPath = $date . '.' . $name[1];
  $newPaths = $date . '2' . '.' . $names[1];
  if (file_exists("../images/" . $newPath) || file_exists("../images/" . $newPaths)) {
    echo "<script>alert('图片名已经存在');history.go(-1);</script>";
  } else {
    move_uploaded_file($_FILES["file"]["tmp_name"], iconv("UTF-8", "gb2312", "../images/" . $newPath));
    move_uploaded_file($_FILES["files"]["tmp_name"], iconv("UTF-8", "gb2312", "../images/" . $newPaths));
    $sql = "insert into news (title,spic,bpic,describes) values('" . $_POST["title"] . "','" . $newPath . "','" . $newPaths . "','" . $_POST["describe"] . "')";
    $arr = mysqli_query($db_link, $sql);
    if ($arr) {
      echo "<script language=javascript>alert('新增相册成功！');window.location='admin_addx.php'</script>";
    } else {
      echo "<script>alert('新增相册失败');history.go(-1);</script>";
    }
  }
}


//新增用户
if ($_POST["action"] == "insetr") {
  function encryptWithSalt($string, $salt)
  {
    $saltedString = $string . $salt;
    $encrypted = hash('sha256', $saltedString);
    return $encrypted;
  }
  $salt = "cadslkvhrovihobnldlvjnrobntlnbmlnjdwrobno"; // 自定义的盐值
  $hashedPass = encryptWithSalt($_POST["password"], $salt); // 使用盐值对密码进行加密

  $sql = "insert into admin (name,passwd) values('" . $_POST["name"] . "','$hashedPass')";
  $arr = mysqli_query($db_link, $sql);
  if ($arr) {
    echo "<script language=javascript>alert('新增用户成功！');window.location='admin_addr.php'</script>";
  } else {
    echo "<script>alert('新增用户失败');history.go(-1);</script>";
  }
}
