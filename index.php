<?php session_start();
?>
<html>
<head>
    <title>Implementing CSS with HTML</title>
    <link rel="stylesheet" href="css/myStyle.css" />
</head>
<body topmargin="80">
<center>
    <form name="frm" action="authenticate.php" method="post">
        <table>
            <tr>
                <td colspan="2" class="heading">Login</td>
            </tr>
            <tr>
                <td colspan="2">
                    <table class="mytable">
                        <tr>
                            <td>User</td>
                            <td class="mytd"><input type="text" name="txtUser" /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td class="mytd"><input type="password" name="txtPwd" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="signup"><a href="#">Register?</a></td>
                <td align="right">
                    <input type="submit" value="Sign in" class="mybutton" />
                </td>
            </tr>
            <?php if(isset($_SESSION['_error']) && $_SESSION['_error'] != ''){?>
            <tr>
                <td colspan="2">
                    <?php echo $_SESSION['_error']; session_unset($_SESSION['_error']); ?>
                </td>
            </tr>
            <?php }?>
        </table>
    </form>
</center>
</body>
</html>