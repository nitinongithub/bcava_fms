<?php
    require 'connectDB.php';
    $sql = "select * from user_status;";
    $result = $con->query($sql);
?>
<html>
    <head>
        <title>Add Users</title>
    </head>
    <body topmargin="200">
        <center>
            <form name="addUsers" action="submitUser.php" method="post">
                <table>
                    <tr>
                        <td>
                            USER STATUS ID
                        </td>
                        <td>
                            <input type="text" name="userStatusId" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br><br>USER STATUS
                        </td>
                        <td>
                            <br><br><input type="text" name="userStatus" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <br><br><br><input type="submit" value="Add User" />
                        </td>
                    </tr>
                </table>
            </form>
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
            </table>
        </center>
    </body>
</html>