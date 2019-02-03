<!DOCTYPE html>
<html>
<head>
    <title>Online Shop</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url('css/style.css'); ?>" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<div id="header">
    <div class="header_left">
        <a href="<?php echo base_url("Account/indexB"); ?>"> <img src="<?php echo base_url(); ?>img/logologo.png" style=""></a>
        <button class="menu"><i class="fa fa-align-justify"></i></button>
    </div>

    <div class="header_left2">
    </div>
    <div class="header_center">
        <form name="search" method="get" action="<?php echo base_url("Account/pretraga");?>">
            <input class="input_search" type="text" name="search" /><button class="buttonS" type="submit"><i class="fa fa-search" style="color: white;"></i></button>
        </form>
    </div>
    <div class="header_right">
        <i class="fa fa-user" aria-hidden="true" style="color: darkgrey;" ></i> <a href="<?php echo base_url("Account/buyerProfile"); ?>">Profile</a> &nbsp;| &nbsp;
        <i class="fa fa-sign-out-alt"></i> <a href="<?php echo base_url("Account/LogOut"); ?>">Log Out</a>
    </div>
</div>
<div id="content">