<?php
    require 'connectDB.php';
    $userStatusId = $_POST['userStatusId'];
    $userStatus = $_POST['userStatus'];
    echo $sql = "INSERT INTO `user_status` VALUES ('$userStatusId', '$userStatus', 1);";
    $res = $con->query($sql);
    /*if($res == false){
        echo "gadbad";
    }
    */
    header("Location: addUsers.php");