<?php

$shName = $_POST['staticHeadName'];
$shDesc = $_POST['desc_'];
$con = mysqli_connect('localhost', 'root', '', 'fms');
echo $sql = "INSERT INTO fee (`STATIC_HEAD_NAME`, `DESCRIPTION`, `USER_ID`, `STATUS`) VALUES('$shName', '$shDesc', 'user', '1')";
$con->query($sql);

header("Location: addStaticHeads.php");