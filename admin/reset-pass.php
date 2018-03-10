<?php session_start(); include_once("../functions.php");
if(isset($_POST['email']))
{
    $result = mysql_query("SELECT * FROM admin WHERE login = '". $_POST['email']."'") or die("EEEE");
    $data = mysql_fetch_row($result);
    if($data[0] != null)
    {
        $pass = rand(10000, 99999);
        mail($_POST['email'], "Reset Pass", $pass);
        mysql_query("UPDATE admin SET pass = '$pass' WHERE id = ".$data[0]);
        unset($_SESSION['admin']);
        header("Location: login.php");
    }
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>shop.csgo.gs | admin</title>

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
<div class="container-fluid">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">Восстановление пароля</div>
				<div class="panel-body">
					
					
					<form class="form-horizontal" role="form" method="POST" action="reset-pass.php">
						<input type="hidden" name="_token" value="7RzXMbPIhieBeUj7WCk5jmYbW4LGDXCj1lWdHlnf">

						<div class="form-group">
							<label class="col-md-4 control-label">E-mail адресс</label>
							<div class="col-md-6">
								<input type="email" class="form-control" name="email" value="">
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary">
									Отправить пароль на почту
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>