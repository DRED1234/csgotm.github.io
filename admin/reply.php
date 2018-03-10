<?php include ("header.php") ?>
	<section class="content">
	    <div class="container">
        <ul class="breadcrumb">
          <li><a href="/admin"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
          <li><a href="/admin/sup">Поддержка</a></li>
        
        <?php $result = mysql_query("SELECT * FROM support WHERE id = " .$_GET['id_reply']);
        $data = mysql_fetch_row($result); ?>
          <li class="active">Обработка обращения №<?php echo $data[0]; ?></li>
        </ul>
        <div class="panel panel-default">
            <div class="panel-heading">Обработка обращения №<?php echo $data[0]; ?></div>
            <div class="panel-body">
                <p>Текст: <?php echo $data[2]; ?></p>
                <p>Текст сообщения</p>
                <p>Ответы:
            <?php $result = mysql_query("SELECT * FROM support_ask WHERE id_q = " .$_GET['id_reply']);
                  
                  while($data = mysql_fetch_row($result))
                  {
                    echo $data[2] . '<br>';
                  }
        ?>
                </p>
                
                
                <p>Добавить Ответ:</p>
                <div class="jumbotron">
                
                
                
                <form class="form-horizontal" action="support_request.php" method="post">
                <input type="hidden" name="_token" value="EjT9hp2Syz7zdfarj3IuVSZs6GvO9gKBtEAuZILe">
                <div class="form-group">
                <input type="hidden" name="id_ask" value="<?php echo $_GET['id_reply']?>">
                <textarea class="form-control" rows="3" id="body" name="body" style="visibility: hidden; display: none;"></textarea>
                </div>
                <button type="submit" class="btn btn-success">Добавить Ответ</button>
                </form>
                        
                        
                        
                        <script src="//cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>
                        <script>
                          CKEDITOR.replace( 'body' );
                        </script>
                </div>
            </div>
        </div>
		<div style="text-align:center;"><a href="index.php">Админка</a></div>
        
    </div>
	</section>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
