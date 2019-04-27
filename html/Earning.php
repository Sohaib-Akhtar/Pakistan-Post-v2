<html>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link rel="stylesheet" href="Web_Styling.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<head>
    <meta charset="utf-8">
    <meta name="description" content="The Pakistan Post Webpage for
        both customers and employees.">
    <title>Pakistan Post Homepage</title>
    <link rel="shortcut icon" href="../images/Favicon.ico" type="image/x-icon" />
</head>

<body class="bg-image">
    <div id="d01">
        <img id="i01" src="../images/New Logo PPO.jpg">
        <h1 id="h01"><i>Delivery & Information at Lightning Speed</i></h1>
    </div>
    <ul id="ul3">
        <li><a href="main.html"><i class="fa fa-fw fa-home"></i> Home</a></li>
        <li><a href="Register.html"><i class="fa fa-fw fa-address-card"></i> Register Customer</a></li>
        <li><a class="active" href="Earning.php"><i class="fa fa-fw fa-envelope"></i> Yearly Funds Collection</a></li>
    </ul>
    <div id="d05">
        <h1 align="center">Annual Fund Collection</h1>
        <table align="center">
            <form name="reg" action="Earning.php" method="post">
                <hr>
                <tr>
                    <td id="td2">Branch Code:</td>
                    <td><input type="text" name="name" value="" placeholder="Branch Postal Code"></td>
                </tr>
                <tr>
                    <td id="td2">Enter Year:</td>
                    <td>
                        <div class="custom-select">
                            <select>
                                <option>2018</option>
                                <?php
                                $db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = pc1)(PORT = 1521)) ) (CONNECT_DATA = (SID = orcl) ) )"; 
                                $db_user = "scott"; 
                                $db_pass = "1234";
                                
                                 $con = oci_connect($db_user,$db_pass); 
                                 $query1="select Customer_ID from customer";
                                 $a = oci_parse($con, $query1); 
                                 $r = oci_execute($a);
                                 $val=0;
                                 while($row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))  
      	                         {
                                    echo "<option>" . $row['CUSTOMER_ID'] . "</option>";
                                    $val+=1;
                                } 
                                ?>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </form>
        </table>
        <input class="registerbtn2" type="submit" name="Display" value="Display">
        <hr>
        <?php
        $id=$_POST['id'];
        $query="select * from client where userid='$id'";
        $a = oci_parse($con, $query); 
        $r = oci_execute($a);
    ?>
        <table border="true" class="display-table" align="center">
            <tr>
                <th># of Collections</th>
                <th>Month</th>
                <th>Amount Gathered</th>
                <th>Amount Returned</th>
                <th>Net Amount</th>
            </tr>
            <?php
        while($row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))  
      	{
    ?>
            <tr>
                <td><?php echo $row["USERID"];?></td>
                <td><?php echo $row["UNAME"];?></td>
                <td><?php echo $row["DOB"];?></td>
                <td><?php echo $row["EMAIL"];?></td>
                <td><?php echo $row["GENDER"];?></td>
            </tr>
            <?php  } ?>
        </table>
    </div>
    <div class="footer">
        <img src="../images/Favicon.ico" style="float:left; height: 90%">
        <div class="footer-elements">
            <ul id="ul1">
                <li><a href="main.html"><label id="fit1">HOME</label></a></li>
            </ul>
            <ul id="ul1">
                <li><a href="register.html"><label id="fit1">REGISTER</label></a></li>
            </ul>
        </div>
        <div class="footer1">
            <label id="cp1">Copyright@ 2019. Any stealing of content or illegal use of code shall lead to
                consequences.</label>
        </div>
    </div>
</body>

</html>