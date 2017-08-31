
<?php
    require 'connectDB.php';
    $sql = "select * from user_status;";
    $result = $con->query($sql);
?>
<html>
<head>
    <title>Add Static heads</title>
</head>
<body topmargin="200">
<center>
    <form name="addStaticHeads" action="submitSH.php" method="post">
        <table>
            <tr>
                <td>
                    STatic Head Name
                </td>
                <td>
                    <input type="text" name="staticHeadName" />
                </td>
            </tr>
            <tr>
                <td>
                    <br><br> Description
                </td>
                <td>
                    <textarea name="desc_"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <br><br><br><input type="submit" value="Add Static Head" />
                </td>
            </tr>
        </table>
    </form>
 <?php /*
    <table border="1" width="400">
        <tr>
            <th>ID</th>
            <th>User Status</th>
        </tr>
        <?php while($row = mysqli_fetch_array($result)){ ?>
            <?php
            if($row['STATUS'] == 1) { ?>
                <tr style="color: green">
                    <td><?php echo $row['USER_STATUS_ID'];?></td>
                    <td><?php echo $row['USER_STATUS'];?></td>
                </tr>
            <?php } else {?>
                <tr style="color: red">
                    <td><?php echo $row['USER_STATUS_ID'];?></td>
                    <td><?php echo $row['USER_STATUS'];?></td>
                </tr>
            <?php } ?>
        <?php } ?>
 */ ?>
    </table>
</center>
</body>
</html>