<?php
require("../dbconnect.php");

if ($_POST['action'] == "test") {
    function make_safe($variable)
    {
        $variable = addslashes(trim($variable));
        return $variable;
    }

    function encryptWithSalt($string, $salt)
    {
        $saltedString = $string . $salt;
        $encrypted = hash('sha256', $saltedString);
        return $encrypted;
    }

    $user = make_safe($_POST["username"]);
    $pass = make_safe($_POST["pwd"]);
    $salt = "cadslkvhrovihobnldlvjnrobntlnbmlnjdwrobno"; // 自定义的盐值

    $sql = "select * from admin where name='$user'";
    $result = mysqli_query($db_link, $sql);
    $row = mysqli_fetch_assoc($result);
    if ($row == false) {
        echo "<script language='javascript'>alert('不存在此用户！');history.back();</script>";
        exit;
    } else {
        $hashedPass = encryptWithSalt($pass, $salt); // 使用盐值对密码进行加密

        if ($row["passwd"] == $hashedPass) {
            session_start();
            $_SESSION['aname'] = $row["name"];
            // 重定向
            header("location:admin_index.php");
            exit;
        } else {
            echo "<script language='javascript'>alert('密码输入错误！');history.back();</script>";
            exit;
        }
    }
}
?>
