<?php 

$localhost = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "cr10_fulvia_marai_biglibrary";

// create connection
$connect = new  mysqli($localhost, $username, $password, $dbname);

// check connection
if($connect->connect_error) {
    die("connection failed: " . $connect->connect_error);
} else {
    //echo "Successfully Connected";
}

?>