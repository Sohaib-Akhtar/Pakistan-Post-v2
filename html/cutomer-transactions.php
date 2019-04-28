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
        <li><a href="track-order.php"><i class="fa fa-fw fa-search"></i> Track Order</a></li>
        <li><a class="active" href="cutomer-transactions.php"><i class="fa fa-fw fa-history"></i> Customer
                Transactions</a></li>
    </ul>
    <div id="d06">
        <h1 align="center">Customer Transactions History</h1>
        <form name="reg" action="cutomer-transactions.php" method="post">
            <table align="center">
                <hr>
                <tr>
                    <td id="td2">Customer ID:</td>
                    <td><input type="text" name="CustID" value="" placeholder="E.g. 10000"></td>
                </tr>
                <tr>
                    <td></td>
                    <td id="td2">OR</td>
                </tr>
                <tr>
                    <td id="td2">CNIC:</td>
                    <td><input type="text" name="CNIC" value="" placeholder="E.g. 3630285346195"></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            <input class="registerbtn2" type="submit" name="View" value="View">
        </form>
        <hr>
    </div>
    <div id="div-4">
        <h2 id="h08">Customer's Details</h2>
        <table class="display-table3" align="center">
            <tr>
                <td id="td4">Customer ID:</td>
            </tr>
            <tr>
                <td id="td4">Customer Name:</td>
            </tr>
            <tr>
                <td id="td4">Address:</td>
            </tr>
            <tr>
                <td id="td4">City:</td>
            </tr>
            <tr>
                <td id="td4">Mobile#:</td>
            </tr>
            <tr>
                <td id="td4">CNIC:</td>
            </tr>
        </table>
    </div>
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
        </table>
    </div>
    <br>
    <br>
    <br>
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