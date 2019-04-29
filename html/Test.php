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
        <li><a class="active" href="Test.html"><i class="fa fa-fw fa-address-card"></i> Add Mail/Parcel</a></li>
        <li><a href="Earning.php"><i class="fa fa-fw fa-envelope"></i> Yearly Funds Collection</a></li>
        <li><a href="track-order.php"><i class="fa fa-fw fa-search"></i> Track Order</a></li>
        <li><a href="CustomerTransaction.php"><i class="fa fa-fw fa-history"></i> Customer Transactions</a></li>
    </ul>
    <div id="d07">
        <h1 align="center">New Customer Details</h1>
        <form name="reg" action="./Register.php" method="post">
            <table align="center">
                <hr>
                <tr>
                    <td id="td2">First Name:</td>
                    <td><input type="text" name="fname" value="" placeholder="Enter Your First Name"></td>
                    <td id="td8">Last Name:</td>
                    <td><input type="text" name="lname" value="" placeholder="Enter Your Last Name"></td>
                </tr>
                <tr>
                    <td id="td2">MobileNo:</td>
                    <td><input type="text" name="add" value="" placeholder="Your Phone#"></td>
                    <td id="td8">TelNo:</td>
                    <td><input type="text" name="email" value="" placeholder="Your E-mail"></td>
                </tr>
                <tr>
                    <td id="td2">Address:</td>
                    <td><textarea rows="4" cols="35" id="Address" placeholder="Enter Your Address"></textarea></td>
                    <td id="td8">Postal Code:</td>
                    <td><input type="text" name="postalcode" value="" placeholder="Enter Your Postal Code"></td>
                </tr>
                <tr>
                    <td id="td2">City:</td>
                    <td id="td8">
                        <div class="custom-select">
                        <select>
                        <?php
                            $db_user = "scott"; 
                            $db_pass = "1234";
                            $con = oci_connect($db_user,$db_pass);
                            $query1="select city_id,name from city";
                            $a = oci_parse($con, $query1); 
                            $r = oci_execute($a);
                            while($row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))  
                            {
                                $cityid=$row['CITY_ID'];
                                echo '<option value="'.$cityid .'">' . $row['NAME'] . '</option>';
                            } 
                        ?>
                        </select>
                        </div>
                    </td>
                </tr>
            </table>
            <input class="registerbtn3" type="submit" name="register" value="register">
        </form>
    </div>
    <div id="d07">
        <h1 align="center">Parcel Details</h1>
        <form name="reg" action="./Register.php" method="post">
            <table align="center">
                <hr>
                <h2 align="center" id="h09">Receiver Details</h1>
                    <hr>
                    <tr>
                        <td id="td2">First Name:</td>
                        <td><input type="text" name="fname" value="" placeholder="Enter Your First Name"></td>
                        <td id="td8">Last Name:</td>
                        <td><input type="text" name="lname" value="" placeholder="Enter Your Last Name"></td>
                    </tr>
                    <tr>
                        <td id="td2">MobileNo:</td>
                        <td><input type="text" name="add" value="" placeholder="Your Phone#"></td>
                        <td id="td8">TelNo:</td>
                        <td><input type="text" name="email" value="" placeholder="Your E-mail"></td>
                    </tr>
                    <tr>
                        <td id="td2">Address:</td>
                        <td><textarea rows="4" cols="35" id="Address" placeholder="Enter Your Address"></textarea></td>
                        <td id="td8">Postal Code:</td>
                        <td><input type="text" name="postalcode" value="" placeholder="Enter Your Postal Code"></td>
                    </tr>
            </table>
            <table align="center">
                <hr>
                <h2 align="center" id="h09">Parcel Details</h1>
                    <hr>
                    <tr>
                        <td id="td2">Content:</td>
                        <td id="td8">
                            <div class="custom-select">
                                <select>
                                    <?php
                                    $db_user = "scott"; 
                                    $db_pass = "1234";
                                     $con = oci_connect($db_user,$db_pass);
                                     $query1="select contenttype_id,type_name from contenttype";
                                     $a = oci_parse($con, $query1); 
                                     $r = oci_execute($a);
                                     while($row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))  
                                    {
                                        $contenttype_id=$row['CONTENTTYPE_ID'];
                                        echo '<option value="'.$contenttype_id.'">' . $row['TYPE_NAME'] . '</option>';
                                    } 
                                    ?>
                                </select>
                            </div>
                        </td>
                        <td id="td2">Priority:</td>
                        <td id="td8">
                            <div class="custom-select">
                                <select>
                                    <?php
                                    $db_user = "scott"; 
                                    $db_pass = "1234";
                                     $con = oci_connect($db_user,$db_pass);
                                     $query1="select priority_id,name from priority";
                                     $a = oci_parse($con, $query1); 
                                     $r = oci_execute($a);
                                     while($row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))  
                                    {
                                        $priority_id=$row['PRIORITY_ID'];
                                        echo '<option value="'.$priority_id.'">' . $row['NAME'] . '</option>';
                                    } 
                                    ?>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="td2">MailType:</td>
                        <td id="td8">
                            <div class="custom-select">
                                <select>
                                    <?php
                                    $db_user = "scott"; 
                                    $db_pass = "1234";
                                     $con = oci_connect($db_user,$db_pass);
                                     $query1="select mailtype_id,type_name from mailtype";
                                     $a = oci_parse($con, $query1); 
                                     $r = oci_execute($a);
                                     while($row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))  
                                    {
                                        $mailtype=$row['MAILTYPE_ID'];
                                        echo '<option value="'.$mailtype.'">' . $row['TYPE_NAME'] . '</option>';
                                    } 
                                    ?>
                                </select>
                            </div>
                        </td>
                        <td id="td2">Weight:</td>
                        <td id="td8"><input type="text" name="email" value="" placeholder="Your Parcel Weight"></td>
                    </tr>
                    <tr>
                        <td id="td2">Worth Of Parcel:</td>
                        <td id="td8"><input type="text" name="email" value="" placeholder="Your Parcel Worth"></td>
                        <td id="td2">Insurance:</td>
                        <td id="td8">
                            <div class="custom-select">
                                <select id="insurance">
                                    <option value="true">True</option>
                                    <option value="false">False</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="td2">Refund:</td>
                        <td id="td8">
                            <div class="custom-select">
                                <select id="refund">
                                    <option value="true">True</option>
                                    <option value="false">False</option>
                                </select>
                            </div>
                        </td>
                        <td id="td2">Quantity:</td>
                        <td id="td8"><input type="text" name="email" value="" placeholder="Your Quantity Here"></td>
                    </tr>
            </table>
            <input class="registerbtn3" type="submit" name="register" value="register">
        </form>
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