<?php
$db_link = mysqli_connect(
  "localhost",
  //MYSQL��������ַ
  "root",
  //MYSQL��¼�û���
  "123456",
  //MYSQL��¼���루�˴��ɸ���ʵ������޸ģ�
  "hotel"
); //��Ҫ�������ݿ���

if (!$db_link) {
  die("���ݿ����Ӵ���: " . mysqli_connect_error());
}

//�������ݿ����
mysqli_query($db_link, "SET NAMES 'utf8'");

?>