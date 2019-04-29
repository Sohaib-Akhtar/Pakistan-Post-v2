<?php
    if(ctype_digit($_GET['q'])){
        $q = intval($_GET['q']);

        $db_sid = "(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
                (CONNECT_DATA =
                    (SERVER = DEDICATED)
                    (SERVICE_NAME = TahaFiroz)
                ))"; 
        $db_user = "bilal1"; 
        $db_pass = "bilal";
        $con = oci_connect($db_user,$db_pass, $db_sid);

        $query="SELECT Type_Name AS Description, m.Qty AS Quantity, FirstName || ' '||LastName AS RecipientName, StreetAddress, Invoice_Date
                FROM Mail m
                INNER JOIN Mail_Invoice minv
                ON minv.Barcode = m.Barcode 
                INNER JOIN Invoice inv
                ON inv.Invoice_ID = minv.Invoice_ID 
                INNER JOIN Details d
                ON d.Details_ID = m.R_Detail_ID
                LEFT JOIN ContentType ctype
                ON ctype.ContentType_ID = m.ContentType_ID
                INNER JOIN DomesticAddresses da
                ON m.R_Address_ID = da.Address_ID
                INNER JOIN City ct
                ON ct.City_ID = da.City_ID
                WHERE m.Barcode= $q";
        $parsed = oci_parse($con, $query); 
        $result = oci_execute($parsed);

        while($row = oci_fetch_array($parsed)) {
            echo "<td>" . $q . "</td>";
            echo "<td>" . $row['DESCRIPTION'] . "</td>";
            echo "<td>" . $row['QUANTITY'] . "</td>";
            echo "<td>" . $row['RECIPIENTNAME'] . "</td>";
            echo "<td>" . $row['STREETADDRESS'] . "</td>";
            echo "<td>" . $row['INVOICE_DATE'] . "</td>";
        }   
    }
    else{
        echo "<tr> Invalid Input <tr>";
    }
?>