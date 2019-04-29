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
        <li><a href="track-order.php"><i class="fa fa-fw fa-search"></i> Track Order</a></li>    
        <li><a href="CustomerTransaction.php"><i class="fa fa-fw fa-history"></i> Customer Transactions</a></li>
    </ul>
    <div id="d05">
        <h1 align="center">Annual Funds Collection</h1>
        <form name="reg" action="Earning.php" method="post">
            <table align="center">
                <hr>
                <tr>
                    <td id="td2">Branch Code:</td>
                    <td><input type="text" name="brcode" value="" placeholder="Branch Postal Code"  required pattern = "[0-9]{4,5}"></td>
                </tr>
                <tr>
                    <td id="td2">Enter Year:</td>
                    <td>
                        <div class="custom-select">
                            <select>
                                <?php
                                $db_user = "scott"; 
                                $db_pass = "1234";
                                 $con = oci_connect($db_user,$db_pass);
                                 $query1="select distinct extract(year from invoice_date) as year from invoice";
                                 $a = oci_parse($con, $query1); 
                                 $r = oci_execute($a);
                                 $val=0;
                                 while($row = oci_fetch_array($a, OCI_BOTH+OCI_RETURN_NULLS))  
      	                         {
                                    echo "<option>" . $row['YEAR'] . "</option>";
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
            </table>
            <input class="registerbtn2" type="submit" name="Display" value="Display">
        </form>
        <hr>
        <?php
        if(isset($_POST['Display'])){
            $id=$_POST['brcode'];

            $query="SELECT postalcode
                    FROM postoffice
                    WHERE postalcode='$id'";
            $data=array();
            $a1 = oci_parse($con,$query);
            $r1 = oci_execute($a1);
            while($row1 = oci_fetch_array($a1, OCI_BOTH+OCI_RETURN_NULLS)){
                $data[]=$row1;
            }
            $num=count($data);

            if($num>0){

            $query="SELECT e.firstname || ' ' || e.lastname AS name, p.postalcode AS bcode, p.postoffice_name AS bname
            FROM employee e
            INNER JOIN postoffice p
            ON e.emp_id=p.manager_id
            WHERE p.postalcode='$id'";
            $a1 = oci_parse($con,$query);
            $r1 = oci_execute($a1);
            while($row1 = oci_fetch_array($a1, OCI_BOTH+OCI_RETURN_NULLS)){
                ?>
                <table>
                    <tr>
                        <td id="td4">Manager Name:</td>
                        <td id="td4"><?php echo $row1['NAME'];?></td>
                    </tr>
                    <tr>
                        <td id="td4">Branch Name:</td>
                        <td id="td4"><?php echo $row1['BNAME'];?></td>
                    </tr>
                    <tr>
                        <td id="td4">Branch#:</td>
                        <td id="td4"><?php echo $row1['BCODE'];?></td>
                    </tr>
                </table>
                <hr>
                <table border="true" class="display-table" align="center">
            <?php
            }
            $query="SELECT extract(month FROM invoice_date) AS month,COUNT(invoice_id) AS collections 
                    FROM invoice 
                    WHERE postalcode = '$id'
                    GROUP BY extract(month FROM invoice_date)
                    ORDER BY extract(month FROM invoice_date) ASC";
            $a1 = oci_parse($con,$query);
            $r1 = oci_execute($a1);
            ?>
            <tr>
                <th># of Collections</th>
                <th>Month</th>
                <th>Amount Gathered</th>
                <th>Amount Returned</th>
                <th>Net Amount</th>
            </tr>
            <tr id="td2">
            <?php
                $TOTAL_AG=0;
                $TOTAL_AR=0;
                $TOTAL_NA=0;
                while($row1 = oci_fetch_array($a1, OCI_BOTH+OCI_RETURN_NULLS)){
                    $MONTH = $row1["MONTH"];
                    $STAMP_SUMQUERY="SELECT SUM(sinv.TotalPrice) AS POSSUM FROM StampInvoice sinv
                                INNER JOIN Invoice inv
                                ON sinv.Invoice_ID = inv.Invoice_ID
                                WHERE sinv.TotalPrice > 0 AND PostalCode = '$id' AND EXTRACT(year FROM Invoice_Date) = 2019 
                                AND EXTRACT(month FROM Invoice_Date) = '$MONTH'
                                ";
                    $STAMP_SUM_A = oci_parse($con, $STAMP_SUMQUERY); 
                    $STAMP_SUM_BOOL = oci_execute($STAMP_SUM_A);

                    $SUMQUERY="SELECT SUM(Price) AS POSSUM FROM Mail_Invoice minv
                                INNER JOIN Invoice inv
                                ON minv.Invoice_ID = inv.Invoice_ID
                                WHERE Price > 0 AND PostalCode = '$id' AND EXTRACT(year FROM Invoice_Date) = 2019 
                                AND EXTRACT(month FROM Invoice_Date) = '$MONTH'
                                ";
                    $SUM_A = oci_parse($con, $SUMQUERY); 
                    $SUM_BOOL = oci_execute($SUM_A);

                    $NEGSUMQUERY="SELECT SUM(Price) AS NEGSUM FROM Mail_Invoice minv
                                INNER JOIN Invoice inv
                                ON minv.Invoice_ID = inv.Invoice_ID
                                WHERE Price < 0 AND PostalCode = '$id' AND EXTRACT(year FROM Invoice_Date) = 2019 
                                AND EXTRACT(month FROM Invoice_Date) = '$MONTH'
                                ";
                    $NEGSUM_A = oci_parse($con, $NEGSUMQUERY); 
                    $NEGSUM_BOOL = oci_execute($NEGSUM_A);                
                    
                    $NETSUM = 0;
                    $NETGATHERED = 0;
                    $SUM = oci_fetch_array($SUM_A, OCI_BOTH+OCI_RETURN_NULLS);  
                    $NEGSUM = oci_fetch_array($NEGSUM_A, OCI_BOTH+OCI_RETURN_NULLS);
                    $STAMP_SUM = oci_fetch_array($STAMP_SUM_A, OCI_BOTH+OCI_RETURN_NULLS);

                    if($STAMP_SUM != FALSE){
                        $NETSUM += $STAMP_SUM["POSSUM"];
                        $NETGATHERED += $STAMP_SUM["POSSUM"];
                        $TOTAL_NA +=$NETSUM;
                        $TOTAL_AG +=$NETGATHERED;
                    }

                    if ($SUM != FALSE){
                        $NETSUM += $SUM["POSSUM"];
                        $NETGATHERED += $SUM["POSSUM"];
                        $TOTAL_NA +=$NETSUM;
                        $TOTAL_AG +=$NETGATHERED;
                    }

                    if($NEGSUM != FALSE){
                        $NETSUM += $NEGSUM["NEGSUM"];
                        $TOTAL_AR += $NEGSUM['NEGSUM'];
                        $TOTAL_NA +=$NEGSUM['NEGSUM'];
                    }
            ?>
            <tr>
                <td id="td2"><?php if ($row1["COLLECTIONS"])echo $row1["COLLECTIONS"]; else echo '-';?></td>
                <td id="td2"><?php if ($row1["MONTH"])echo $row1["MONTH"]; else echo '-';?></td>
                <td id="td2"><?php if ($NETGATHERED> 0)echo $NETGATHERED; else echo '-';?></td>
                <td id="td2"><?php if ($NEGSUM != False && $NEGSUM["NEGSUM"]<0)echo $NEGSUM["NEGSUM"]; else echo '-';?></td>
                <td id="td2"><?php echo $NETSUM;?></td> 
            </tr>   
           <?php }
            ?>
            </table>
            <hr>
            <table>
                <tr>
                    <td id="td4">Total Amount Gathered:</td>
                    <td id="td4"><?php echo $TOTAL_AG;?></td>
                </tr>
                <tr>
                    <td id="td4">Total Amount Returned:</td>
                    <td id="td4"><?php echo $TOTAL_AR;?></td>
                </tr>
                <tr>
                    <td id="td4">Total Net Sum Amount:</td>
                    <td id="td4"><?php echo $TOTAL_NA;?></td>
                </tr>
            </table>
            <?php
            }
            else{
            ?>
            <table align="center">
                <tr>
                    <th>Branch Doesn't Exist</th>
                </tr>
            </table>
            <?php
            }
            }
            ?>
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