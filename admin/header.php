<?php session_start();
include_once("../functions.php"); 
if(!isset($_SESSION['admin']))
{
    header("Location: http://unix-company.myjino.ru/admin/login.php");
}
?>
﻿<!DOCTYPE html>
<html lang="ru">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>market.csgo.gs | admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <header>
	    <div class="col-sm-12">
	    <a href="index.php"><div class="logo"><img src="img/admin-logo.png">Admin</div></a>
        <ul class="nav navbar-nav menu">
            <li class="dropdown">
            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Пользователи <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="users.php">Пользователи</a></li>
                    <li class="divider"></li>
                    <li><a href="mail.php">Рассылка Пользователям</a></li>
                </ul>
            </li>
            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Финансы <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">                   
                    <li><a href="fin-in.php">Пополнения</a></li>
					<li class="divider"></li>
                    <li><a href="fin-out.php">Выводы</a></li>
                </ul>
            </li>
            <li class="dropdown active">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Поддержка <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                   <li><a href="support.php">Все Обращения</a></li>
                   <li class="divider"></li>
                   <li><a href="new-support.php">Без Ответа</a></li>
				   <li class="divider"></li>
                   <li><a href="open-support.php">Открытые</a></li>
				   <li class="divider"></li>
                   <li><a href="close-support.php">Закрытые</a></li>
                </ul>
            </li>
        </ul>
		<ul style="margin-right:0 !important;" class="nav navbar-nav navbar-right">
            <li class="dropdown">
  				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><?php echo $_SESSION['admin']; ?> <span class="caret"></span></a>
  				<ul class="dropdown-menu" role="menu">
  					<li class="disabled"><a href="/copy/user/profile">Профиль</a></li>
  					<li class="divider"></li>
  					<li><a href="auth.php?l=1">Выход</a></li>
  				</ul>
  			</li>
		</ul>
		</div>
	</header>