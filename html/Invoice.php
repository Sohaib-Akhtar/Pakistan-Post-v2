
<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
    if(ctype_digit($_GET['q'])){
        $q = intval($_GET['q']);

        $db_sid = "(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
                (CONNECT_DATA =
                    (SERVER = DEDICATED)
                    (SERVICE_NAME = TahaFiroz)
                ))"; 
        $db_user = "scott"; 
        $db_pass = "tiger";
        $con = oci_connect($db_user,$db_pass, $db_sid);

        $query="SELECT PostOffice_Name ||' '|| Type_Name AS Name FROM PostOffice po
                INNER JOIN POType pt
                ON pt.Type_ID = po.Type_ID
                WHERE PostalCode = $q";
        $parsed = oci_parse($con, $query); 
        $result = oci_execute($parsed);

        echo "<table>
              <tr>
              <th>PostalCode</th>
              <th>Name</th>
              </tr>";
        
        while($row = oci_fetch_array($parsed)) {
            echo "<tr>";
            echo "<td>" . $q . "</td>";
            echo "<td>" . $row['NAME'] . "</td>";
            echo "</tr>";
        }   
        echo "</table>";
    }
    else{
        echo "<tr> Invalid Input <tr>";
    }
?>
</body>
</html> 