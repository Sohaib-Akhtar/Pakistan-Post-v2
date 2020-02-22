<?php
    if(ctype_digit($_GET['q'])){
        $q = intval($_GET['q']);

        $db_sid = "(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
                (CONNECT_DATA =
                    (SERVER = DEDICATED)
                    (SERVICE_NAME = TahaFiroz)
                ))"; 
        $db_user = "bilal"; 
        $db_pass = "bilal1";
        $con = oci_connect($db_user,$db_pass, $db_sid);

        $query= "SELECT FirstName || ' ' || LastName AS Name FROM Customer c
                INNER JOIN Details d
                ON c.Details_ID = d.Details_ID
                WHERE Customer_ID = $q";
        $parsed = oci_parse($con, $query); 
        $result = oci_execute($parsed);
        $row = oci_fetch_array($parsed);
        if($row == false)
            echo NULL;
        else
            echo $row["NAME"];    
    }
    else{
        echo NULL;
    }
?>