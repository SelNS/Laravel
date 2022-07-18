<?php


$local = "localhost";
$username = "root";
$password = "";
$database ="ai";

$connect = mysqli_connect($local, $username, $password, $database);

if($connect){

}
else{
    echo "gagal terhubung ke database";
}

?>