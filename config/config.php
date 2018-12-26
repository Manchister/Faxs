<?php

$theroot = "http://localhost/faxs/";
$updir = $_SERVER['DOCUMENT_ROOT'] . '/faxs/img/uploads';

// Turns om output buffering
ob_start();

// Start Session
session_start();

$timezone = date_default_timezone_set("Africa/Cairo");


// DB Connections

$link = mysqli_connect("localhost", "root", "", "faxs_db");
if (mysqli_connect_errno()) {
	echo "Faild Connecting" . mysqli_connect_errno();
}

$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername;dbname=faxs_db;charset=utf8", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $branches = $conn->prepare("SELECT * FROM branches"); 
    $branches->execute();
    $result = $branches->setFetchMode(PDO::FETCH_ASSOC); 
    $categories = [];
    foreach($branches->fetchAll() as $k => $v) {
        $categories[$v['id']] = $v['title'];
    }
    // $leganQ = $conn->prepare("SELECT * FROM legan"); 
    // $leganQ->execute();
    // $result = $leganQ->setFetchMode(PDO::FETCH_ASSOC); 
    // $legan = [];
    // foreach($leganQ->fetchAll() as $k => $v) {
    //     $legan[$v['id']] = $v['name'];
    // }
    // echo "Connected successfully";  
} catch(PDOException $e) {
    var_dump($e->getMessage());
}

?>