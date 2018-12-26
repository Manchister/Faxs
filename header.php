<?php 
include_once('config/config.php');
 ?>
<?php
$title = "أرشيف الفاكسات";

if (isset($_GET['id']) && isset($branch_title)) {
    $title .= " - " .$branch_title; 
}
 ?>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $title; ?></title>
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet" type="text/css"/>
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">


    <style type="text/css">
        
        a .btn-lg {
             font-weight: bolder !important;
             font-size: 20pt !important;
        }
    </style>



</head>


<body>
<header class="nav-header">
    <div class="logo btn btn-lg btn-default-">
        <a href="index.php"><img src="img/logo.png" /></a>
    </div>
    <div class="mainTitle btn btn-lg btn-secondary">
        <a href="index.php"><span class="fa fa-archive" style="font-size: 30px;"></span>أرشيف الفاكسات</a>
    </div>
    <div class="slogan btn btn-lg ">
        <span>الجـيـش الثــالــث الميدانــى</span>
        <span>فوج تأمين المجرى الملاحى</span>
        <span>مكتب العمـلـيـات والتــدريب</span>
    </div>
</header>

