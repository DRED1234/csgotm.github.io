<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ADMIN UNIXMARKET</title>

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
    <div class="container">
	<div class="row" align="center">
    	<br><a href="http://unix-company.myjino.ru/"><img src="img/vertical-logo.png"></a><br>
    </div>
	
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">Вход</div>
				<div class="panel-body">
					
					<form class="form-horizontal" role="form" method="POST" action="auth.php">
						<input type="hidden" name="_token" value="7RzXMbPIhieBeUj7WCk5jmYbW4LGDXCj1lWdHlnf">
						
						

						<div class="form-group" style="margin-left:5px;margin-right:5px;">
								<input type="email" class="form-control" name="email" value="" placeholder="email">
						</div>

						<div class="form-group" style="margin-left:5px;margin-right:5px;">
								<input type="password" class="form-control" name="pass" placeholder="пароль">
						</div>

						<div class="form-group">
								<div class="checkbox" style="margin-left: 20px;">
									<label>
										<input type="checkbox" name="remember"> запомнить
									</label>
								</div>
						</div>

						<div class="form-group">
								<button type="submit" class="btn btn-success" style="margin-left: 20px;">
									Войти
								</button>
								<a href="reset-pass.php">Забыли пароль?</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>