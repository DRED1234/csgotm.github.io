<?php
session_start();
include_once('functions.php');
if(isset($_POST['mail']))
{
    $arr1 = array('email', 'txt');
    $arr2 = array($_POST['mail'], $_POST['text']);
    insert('support', $arr1, $arr2);
    header("Location: ". $_SERVER['HTTP_REFERER']."?st=1");
}
if(isset($_GET['st']))
{
    echo '<script>alert("Ваш запрос принят в обработку!")</script>';
}
?>
<!DOCTYPE html>
<html lang="RU">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Магазин Counter-Strike: Global Offensive</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">
	<link href="css/select.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/support.css">
	<link rel="stylesheet" href="css/range.css">
	
	<!----------trigger-----------> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


</head>

<body>
    <div class="nav-head">
	<div class="container">
	<div class="left-head">
    <ul> 
        <li><a class="active" href="index.php">Главная</a></li>  
        <li><a href="buy.php">Купить</a></li>   
		<li><a href="sell.php">Продать</a></li>  
		<li><a href="howitworking.php">Как это работает</a></li> 
		<li><a href="discount.php">Скидка</a></li>  
        <li><a href="sell.php">Настройки</a></li>
		<li><a href="sell.php">Настройки</a></li>
    </ul> 
	</div>
		<div class="right-head">
	    <ul>
			<li class="tech"><a class="support" name="modal">поддержка<img style="margin-left:1%;" src="img/tech.png"></a></li>
		</ul>
		</div>
	</div>
	</div>
	<div class="header">
	   <div class="container">
	   <div class="col-sm-6">
	   <div class="left-block">
	      <a href="index.php"><img src="img/logo.png"></img></a>
	   </div>
       </div>
       <?php if (!auth())
       { ?>
	   <div class="col-sm-6">
	   <div class="right-block">
	        <div class="order-btn">
                <a href="auth.php" class="login-btn">войти через steam</a>
            </div>
	   </div>  
	   </div>
	   
<?php } 
	   else
	   {
	       
	       $use = new user($_SESSION['steamid']);
	       
	       
	       
	     echo '<div class="right-block">
	       <ul class="user-block">
			   <li><a href="notification.php"><img title="Настройка оповещений" style="margin-top:5px;" src="img/notification.png"></a></li>
			   <li><a href="balance.php"><div title="Управление балансом" class="user-balance">' . $use->balance .'</div></a></li>
			   <li><div style="background: url(' . $use->ava . ') no-repeat center center; background-size: contain;" class="ava"><a href="auth.php?l=l"><img style="display: none;" src="' . $use->ava . '"><div title="Выйти из аккаунта" class="icon-exit"></div></a></div></li>
		   </ul>
		   <ul class="user-block-mobile">
			   <a href="notification.php"><li><img style="margin-top:5px;" src="img/notification.png"></li></a>
			   <a href="balance.php"><li><p>' . $use->balance .'</p><img style="margin-top:-3px;" src="img/rub.png"></li></a>
			   <a href="auth.php?l=l"><li><img src="img/exit.png"></li></a>
		   </ul>
	   </div>  
	   </div>';
	   ?>
	   
	   
	 <script>
	 setInterval(function () {
            
            $.ajax({
                    url: 'ajaxlink.php',
                    type: "POST",
                    data: {'note_prov':'1'},
                    success: function(data)
                     {
                       //  alert(data);
                       if(data == "true" || data == "truetrue")
                       {
                          var audio = new Audio(); 
                          audio.src = 'notif.mp3'; 
                          audio.autoplay = true; 
                       }
                     }
            })
                
        }, 5000); 
	 
	 $( document ).ready(function() {
	   
       $( ".close-mob" ).click(function() {
        
            $.ajax({
                    url: 'ajaxlink.php',
                    type: "POST",
                    data: {'ses':'1'},
                    success: function(data)
                     {
                      
                     }
            });
            $(".warning-message").css("display", "none");
        });
	   
     $( ".ssilka_prov" ).click(function() {
			//alert("qwe");
            
             $.ajax({
                    url: 'ajaxlink.php',
                    type: "POST",
                    data: {'ssilka_prov':'1'},
                    success: function(data)
                     {
                      $( ".txt_prov1" ).html("Ждите идёт проверка...");
                     }
            });
            
            
            setTimeout(function() { 
                
                $.ajax({
                    url: 'ajaxlink.php',
                    type: "POST",
                    data: {'ssilka_prov':'2'},
                    success: function(data)
                     {
                        if(data == 2)
                        {
                            $( ".txt_prov1" ).html("Проверка пройдена!");
                        }
                        else 
                        {
                            $( ".ssilka_prov" ).html("Проверка не пройдена!");
                        }
                      
                     }
            });
                
                 }, 12000);
		});
        
	 });
	 </script>
	   
	   <?php 
       
  } ?>
	   </div>
       
      
	</div>