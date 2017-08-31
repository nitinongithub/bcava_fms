<?php
    session_start();
    require 'connectDB.php';
    //Fetch post variables.
    $user = $_POST['txtUser'];
    $pwd = $_POST['txtPwd'];
    $sql = "select * from log_in WHERE USER_ID = '$user' AND PASSWORD = '$pwd'";
    $result = $con->query($sql);
    if(mysqli_num_rows($result) != 0) {
        $row = mysqli_fetch_array($result);
        $status = $row['USER_STATUS'];
        $_SESSION['user_'] = $user;
        $_SESSION['user_status_id'] = $status;
        $page = 'main.php';
    }
    else {
        $_SESSION['_error'] = "<span style='color:#ff0000 ;'>X: Incorrect Credentials. Please try again.</span>";
        $page = 'index.php';
    }
    header('Location:' . $page);
?>