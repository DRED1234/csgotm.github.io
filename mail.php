<?php
include_once("functions.php");
if(isset($_POST['mail']))
{
    $arr1 = array('email', 'txt');
    $arr2 = array($_POST['mail'], $_POST['text']);
    insert('support', $arr1, $arr2);
    
    
}


/*if ($_REQUEST['callback']==''){	
exit;
} */
		//if ($_REQUEST['callback']=='Заказать'){	
?>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Ваш заказ принят!</title>
    <link rel="stylesheet" type="text/css" href="style-mail.css">
    </head>
	<body>
<div align="center">
	<!--Header-->
	<div id="posts" class="new_order_page">
<span class="ltc"></span><span class="rtc"></span>
<h2>Благодарю Вас за заказ!</h2>

<div align="center">
  <div align="center">
    <p><strong>"Ваш   заказ принят!"</strong></p>
    <p><strong>Форма   оплаты: наложенный платёж</strong></p>
    <p align="left"><br>
      Ваш заказ успешно принят и поставлен в обработку!</p>
    <p align="left">В   ближайшее время Ваш заказ будет подготовлен и отправлен на указанный Вами адрес   наложенным платежом.</p>
  </div>
  <p>&nbsp;</p>
  </div>			
			

</div>
<div class="posts_footer"><span class="ldc"></span><span class="rdc"></span></div>

<div id="footer">
</div>

</div>



</body>
<?php

/*
	$subject = "vovarepineckiy@gmail.com - Тестовое сообщение";


	// Для отправки HTML-письма должен быть установлен заголовок Content-type
	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
	$headers .= 'From:vovarepineckiy@gmail.com <vovarepineckiy@gmail.com>' . "\r\n";

				$mes = '
					<html>
					<head>
					  <title>Новый Заказ</title>
					</head>
					<body>
					 <center> <h2>vovarepineckiy@gmail.com</h2><br>
					
					<br>
						Данные запроса:
						<br>
						Почта: '.$_POST['mail'].'<br>
						Текст: '.$_POST['text'].'<br>
					<br>
					 </center>
					</body>
					</html>					
				';
	
	mail("gorka46@rambler.ru", "vovarepineckiy@gmail.com", $mes, $headers)
	//}

*/

?>
