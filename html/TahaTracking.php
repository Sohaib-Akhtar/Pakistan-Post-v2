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
        <li><a href="Earning.php"><i class="fa fa-fw fa-envelope"></i> Yearly Funds Collection</a></li>
        <li><a class="active" href="TahaTracking.php"><i class="fa fa-fw fa-search"></i> Track Order</a></li>
        <li><a href="cutomer-transactions.html"><i class="fa fa-fw fa-history"></i> Customer Transactions</a></li>
    </ul>
    <div id="d06">
        <h1 align="center">Track Your Order</h1>
        <form name="reg" action="TahaTracking.php" method="post">
            <table align="center">
                <hr>
                <tr>
                    <td id="td2">Tracking Number:</td>
                    <td><input type="text" name="barcode" value="" placeholder="E.g. 40001923" required pattern = "[0-9]{8}" ></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            <input class="registerbtn2" type="submit" name="Track" value="Track">
        </form>
        <hr>
    </div>
    <?php 
        $db_sid = "(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
                    (CONNECT_DATA =
                        (SERVER = DEDICATED)
                        (SERVICE_NAME = TahaFiroz)
                    ))"; 
        $db_user = "scott"; 
        $db_pass = "tiger";
        $con = oci_connect($db_user,$db_pass, $db_sid);
        if(isset($_POST['Track']))
        {  
            $barcode=$_POST["barcode"];
    ?>
    
    <div id="div-1">
        <h2 id="h04">Shipment Details</h2>
        <table>
            <tr>
                <?php
                    $query="SELECT Agent_ID FROM Invoice
                        WHERE Invoice_ID = (
                        SELECT Invoice_ID FROM Mail_Invoice
                        WHERE Barcode = $barcode AND Price >0)
                    ";
                    $a = oci_parse($con, $query); 
                    $r = oci_execute($a);                
                    $row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
                ?>
                <td id="td3">Agent Reference #:<?php echo $row[0]?> </td>

            </tr>
            <tr>
                <?php
                $query="SELECT Name AS Origin FROM PostOffice po
                INNER JOIN City c
                ON c.City_ID = po.City_ID
                WHERE PostalCode = (
                    SELECT PostalCode FROM Invoice
                    WHERE Invoice_ID = (
                        SELECT Invoice_ID FROM Mail_Invoice
                        WHERE Barcode = $barcode AND Price>0 ))
                ";
                $a = oci_parse($con, $query); 
                $r = oci_execute($a);                
                $row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
             ?>
                <td id="td3">Origin: <?php echo $row[0]?></td>
            </tr>
            <tr>
            <?php
                $query="SELECT Name AS Destination FROM City
                    WHERE City_ID = (
                    SELECT City_ID FROM DomesticAddresses
                    WHERE Address_ID = (
                    SELECT R_Address_ID FROM Mail
                    WHERE Barcode = $barcode))
                ";
                $a = oci_parse($con, $query); 
                $r = oci_execute($a);                
                $row1 = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
            ?>
                <td id="td3">Destination: <?php echo $row1[0]?></td>
            </tr>
            <tr>
            <?php
                 $query="SELECT Invoice_Date AS BookDate FROM Invoice
                 WHERE Invoice_ID = (
                     SELECT Invoice_ID FROM Mail_Invoice
                     WHERE Barcode =$barcode AND Price >0
                 )";
                $a = oci_parse($con, $query); 
                $r = oci_execute($a);                
                $row2 = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
            ?>
                <td id="td3">Booking Date: <?php echo $row2[0]?></td>
            </tr>
            <tr>
            <?php
                 $query="SELECT FirstName || ' ' || LastName AS Shipper FROM Details
                 WHERE Details_ID = (
                     SELECT S_Detail_ID FROM Mail
                     WHERE Barcode =$barcode
                 )";
                $a = oci_parse($con, $query); 
                $r = oci_execute($a);                
                $row3 = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
            ?>
                <td id="td3">Shipper: <?php echo $row3[0]?></td>
            </tr>
            <tr>
            <?php
                 $query="SELECT FirstName || ' ' || LastName AS Cosignee FROM Details
                 WHERE Details_ID = (
                     SELECT R_Detail_ID FROM Mail
                     WHERE Barcode  = $barcode
                 )";
                $a = oci_parse($con, $query); 
                $r = oci_execute($a);                
                $row4 = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
            ?>
                <td id="td3">Consignee: <?php echo $row4[0]?></td>
            </tr>
        </table>
    </div>
    <div id="div-2"> 
        <h2 id="h05">Shipment Tracking</h2>
        <table>
            <tr>
            <?php
                $query="SELECT  Description, TimeStamp FROM
                    (
                        SELECT Description, TimeStamp, row_number() OVER (ORDER BY SerialNo DESC) AS rn FROM StatusTracking st
                        INNER JOIN StatusType s
                        ON st.Status_ID = s.Status_ID
                        WHERE Barcode = $barcode
                    )
                    WHERE rn = 1
                ";
                $a = oci_parse($con, $query); 
                $r = oci_execute($a);                
                $row5 = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
            
                $query="SELECT Refund from mail where barcode=$barcode";
                $a1 = oci_parse($con, $query); 
                $r1 = oci_execute($a1); 
                $refundcheck = oci_fetch_array($a1, OCI_BOTH+OCI_RETURN_NULLS);
            ?>
               <?php if($refundcheck[0]=="false"){?>
                <td id="td3">Current Status: <?php if ($row5 != FALSE) echo $row5[0]; else echo '-' ;?></td>
               <?php }else
               {?>
               <td id="td3">Current Status: <?php  echo 'REFUNDED' ;?></td>
           <?php } ?>
            </tr>
            <tr>
                <td id="td3">Delivered On: <?php if ($row5 != FALSE) echo $row5[1]; else echo '-' ;?></td>
            </tr>
            <tr>
            <?php
                $query="SELECT Signature FROM Mail_Invoice
                        WHERE Barcode = $barcode
                    ";
                    $a = oci_parse($con, $query); 
                    $r = oci_execute($a);                
                    $row6 = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS);  
                ?>
                <td id="td3">Signed By: <?php if ($refundcheck[0] == "false") echo $row6[0]; else echo '-' ;?></td>
            </tr>
        </table>
    </div>
    <br>
    <div id="div-3">
        <h2 id="h06">Track History</h2>
        <table border="true" class="display-table2" align="center">
            <tr>
            <?php
                 
                 

                 $query="SELECT st.TimeStamp, stype.Description, c.Name FROM StatusTracking st 
                 INNER JOIN StatusType stype
                 ON st.Status_ID = stype.Status_ID
                 INNER JOIN PostOffice po
                 ON po.PostalCode = st.PostalCode
                 INNER JOIN City c
                 ON c.City_ID = po.City_ID
                 WHERE st.Barcode = $barcode 
                 ORDER BY SerialNo desc";
                $a = oci_parse($con, $query); 
                $r = oci_execute($a);                  
            if($refundcheck[0]=="false")
            {?>
                <th>Date Time</th>
                <th>Status</th>
                <th>Location</th>
            </tr>
            <?php while( $trackrow = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))
            { ?>
            <tr>
                <td><?php echo $trackrow[0]?></th>
                <td><?php echo $trackrow[1]?></th>
                <td><?php echo $trackrow[2]?></th>
            </tr>
            <?php } ?>
           <?php } ?>
        </table>
    </div>
    <br>
    <br>
    <br>
    <?php 
    } 
   ?>
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