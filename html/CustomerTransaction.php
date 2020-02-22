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
        <li><a href="Test.php"><i class="fa fa-fw fa-history"></i>Add Mail/Parcel</a></li>
        <li><a href="Earning.php"><i class="fa fa-fw fa-envelope"></i> Yearly Funds Collection</a></li>
        <li><a href="track-order.php"><i class="fa fa-fw fa-search"></i> Track Order</a></li>
        <li><a class="active" href="CustomerTransaction.php"><i class="fa fa-fw fa-history"></i> Customer
                Transactions</a></li>
    </ul>
    <div id="d06">
        <h1 align="center">Customer Transactions History</h1>
        <form name="reg" action="CustomerTransaction.php" method="post">
            <table align="center">
                <hr>
                <tr>
                    <td id="td2">Customer ID:</td>
                    <td><input type="text" name="CustID" value="" placeholder="E.g. 10000"  required pattern = "[0-9]{5}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td id="td2">OR</td>
                </tr>
                <tr>
                    <td id="td2">CNIC:</td>
                    <td><input type="text" name="CNIC" value="" placeholder="E.g. 3630285346195" pattern = "[0-9]{13}"></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            <input class="registerbtn2" type="submit" name="View" value="View">
        </form>
        <hr>
    </div>
    <?php 
                
                $db_sid = "(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
                            (CONNECT_DATA =
                                (SERVER = DEDICATED)
                                (SERVICE_NAME = TahaFiroz)
                            ))"; 
                $db_user = "bilal1"; 
                $db_pass = "bilal";
                $is_id = FALSE;
                $id = 0;
                $con = oci_connect($db_user,$db_pass);
                if(isset($_POST['View']))
                {  
                    $exec=True;
                    $is_cnic= FALSE;
                    $is_id= FALSE;
                    $id = $_POST["CustID"];
                    $cnic = $_POST["CNIC"];
                    if(!empty($id))
                        $is_id = TRUE;

                    if(!empty($cnic))
                        $is_cnic = TRUE;
                    if(!$is_cnic && $is_id){
                        $q_id="SELECT CUSTOMER_ID FROM Customer
                        WHERE CUSTOMER_ID = $id
                        ";
                        $p_id = oci_parse($con, $q_id); 
                        $v_id = oci_execute($p_id);
                        $data=array();

                        while($row_id = oci_fetch_array($p_id, OCI_BOTH+OCI_RETURN_NULLS)){
                            $data[]=$row_id;
                        }

                        $num_cnic=count($data);
                        if($num_cnic==0)
                        $exec=FALSE;
                    }
                    if($is_cnic == TRUE && $is_id == TRUE)
                    {
                        $q_id = "SELECT CNIC FROM Customer
                            WHERE Customer_ID = $id
                        ";

                        $p_id = oci_parse($con, $q_id); 
                        $v_id = oci_execute($p_id);                
                        $row_id = oci_fetch_array($p_id, OCI_BOTH+OCI_RETURN_NULLS);
                        if($row_id != FALSE)
                        {
                            if ($row_id["CNIC"] != $cnic)
                                $is_cnic = FALSE;
                            else
                                $is_id = FALSE;
                        }

                    }
                    if($exec)
                    {$query = "";
                    if($is_id == TRUE){
                        $query="SELECT FirstName || ' ' ||LastName AS CustName, c.Customer_ID AS CUSTID, StreetAddress, City.Name AS CITYNAME, MobileNo, CNIC FROM Customer c
                            INNER JOIN Details d
                            ON c.Details_ID = d.Details_ID
                            INNER JOIN Customer_Addresses ca
                            ON c.Customer_ID = ca.Customer_ID
                            INNER JOIN DomesticAddresses da
                            ON ca.Address_ID = da.Address_ID
                            INNER JOIN City
                            ON City.City_ID = da.City_ID
                            WHERE c.Customer_ID = $id";
                    }
                    elseif($is_cnic == TRUE){
                        $query="SELECT FirstName ||' ' ||LastName AS CustName, c.Customer_ID AS CUSTID, StreetAddress, City.Name AS CITYNAME, MobileNo, CNIC FROM Customer c
                            INNER JOIN Details d
                            ON c.Details_ID = d.Details_ID
                            INNER JOIN Customer_Addresses ca
                            ON c.Customer_ID = ca.Customer_ID
                            INNER JOIN DomesticAddresses da
                            ON ca.Address_ID = da.Address_ID
                            INNER JOIN City
                            ON City.City_ID = da.City_ID
                            WHERE CNIC = $cnic";
                    }
                    $parse = oci_parse($con, $query); 
                    $valid = oci_execute($parse);
                    $row = oci_fetch_array($parse, OCI_BOTH+OCI_RETURN_NULLS);
                    if(!$is_id){
                        $id = $row["CUSTID"];
                        $is_id = TRUE;
                    }
            ?>
            <div id="div-4">
        <h2 id="h08">Customer's Details</h2>
        <table class="display-table3" align="center">
        
            <tr>
                <td id="td4">Customer ID: <?php if(!is_null($row["CUSTID"])) echo $row["CUSTID"]; else echo '-';?></td>
            </tr>
            <tr>
                <td id="td4">Customer Name: <?php if(!is_null($row["CUSTNAME"])) echo $row["CUSTNAME"]; else echo '-';?></td>
            </tr>
            <tr>
                <td id="td4">Address: <?php if(!is_null($row["STREETADDRESS"])) echo $row["STREETADDRESS"]; else echo '-';?></td>
            </tr>
            <tr>
                <td id="td4">City: <?php if(!is_null($row["CITYNAME"])) echo $row["CITYNAME"]; else echo '-';?></td>
            </tr>
            <tr>
                <td id="td4">Mobile#: <?php if(!is_null($row["MOBILENO"])) echo $row["MOBILENO"]; else echo '-';?></td>
            </tr>
            <tr>
                <td id="td4">CNIC: <?php if(!is_null($row["CNIC"])) echo $row["CNIC"]; else echo '-';?></td>
            </tr>
            <?php  ?>
        </table>
    </div>
            <?php
                if($is_id)
                {
                $query="SELECT minv.Barcode AS Tracking, Type_Name AS Description, m.Qty AS Quantity, FirstName || ' '||LastName AS RecipientName, StreetAddress, ct.Name AS CUSTNAME, Invoice_Date
                        FROM Customer c
                        INNER JOIN Customer_Invoice cinv
                        ON cinv.Customer_ID = c.Customer_ID
                        INNER JOIN Invoice inv
                        ON inv.Invoice_ID = cinv.Invoice_ID 
                        INNER JOIN Mail_Invoice minv
                        ON minv.Invoice_ID = cinv.Invoice_ID
                        INNER JOIN Mail m
                        ON m.Barcode = minv.Barcode
                        INNER JOIN Details d
                        ON d.Details_ID = m.R_Detail_ID
                        LEFT JOIN ContentType ctype
                        ON ctype.ContentType_ID = m.ContentType_ID
                        INNER JOIN Customer_Addresses ca
                        ON c.Customer_ID = ca.Customer_ID
                        INNER JOIN DomesticAddresses da
                        ON m.R_Address_ID = da.Address_ID
                        INNER JOIN City ct
                        ON ct.City_ID = da.City_ID
                        WHERE c.Customer_ID = $id and minv.Price>0
                    "; 
                    $parse = oci_parse($con, $query); 
                    $valid = oci_execute($parse);
                ?>
                <div id="div-4">
                <h2 id="h07">Transactions History</h2>
                <table border="true" class="display-table3" align="center">
                <tr>
                    <th>Parcel Number</th>
                    <th>Desc</th>
                    <th>Qty</th>
                    <th>Reciepient Name</th>
                    <th>Reciepient Addr</th>
                    <th>City</th>
                    <th>Status</th>
                    <th>Date</th>
                </tr>
                <?php
                      
                while($row = oci_fetch_array($parse, OCI_BOTH+OCI_RETURN_NULLS))
                { ?>
                    <tr>
                        <?php
                        $barcode = $row["TRACKING"];
                        $query="SELECT  Description, TimeStamp FROM
                                (
                                    SELECT Description, TimeStamp, row_number() OVER (ORDER BY SerialNo DESC) AS rn FROM StatusTracking st
                                    INNER JOIN StatusType s
                                    ON st.Status_ID = s.Status_ID
                                    WHERE Barcode = $barcode
                                )
                                WHERE rn = 1
                                ";
                        $status_parse = oci_parse($con, $query); 
                        $status_valid = oci_execute($status_parse);                
                        $status_row= oci_fetch_array($status_parse, OCI_BOTH+OCI_RETURN_NULLS);
                        ?>
                        <td><?php echo $row["TRACKING"];?></td>
                        <td><?php if(!is_null($row["DESCRIPTION"])) echo $row["DESCRIPTION"]; echo '-';?></td>
                        <td><?php echo $row["QUANTITY"];?></td>
                        <td><?php echo $row["RECIPIENTNAME"];?></td>
                        <td><?php echo $row["STREETADDRESS"];?></td>
                        <td><?php echo $row["CUSTNAME"];?></td>
                        <td><?php if( !is_null($status_row["DESCRIPTION"]))echo $status_row["DESCRIPTION"];else echo '-';?></td>
                        <td><?php echo $row["INVOICE_DATE"];?></td>
                    </tr>
            <?php } }
                }else
                {
                    ?>
                    <table align="center">
                        <tr>
                            <th>Customer doesn't exist</th>
                        </tr>
                    </table>
            <?php
                }
            }?>

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