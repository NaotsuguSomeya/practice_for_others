<?php
require_once('../config.php');
require_once('../functions.php');

$dbh = connectDb();

$id = (int)$_POST['id'];
$sql = "update inquiry set status = 'deleted' where id = $id";
$dbh->query($sql);

echo $id; // ajaxの戻り値
