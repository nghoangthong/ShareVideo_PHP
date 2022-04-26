<?php
ob_start(); 
session_start();

date_default_timezone_set("America/Puerto_Rico");

try {
    header("Content-type: text/html; charset=utf-8");
    $con = new PDO("mysql:dbname=VideoTube;host=localhost", "root", "");
    
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
}
catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>