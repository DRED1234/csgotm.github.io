<?php include ("header.php") ?>
	<section class="content">
	    <div class="container">
        <ul class="breadcrumb">
          <li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
          <li><a href="support.php">Поддержка</a></li>
          
            <?php $result = mysql_query("SELECT * FROM support WHERE id = " .$_GET['id_view']);
        $data = mysql_fetch_row($result); ?>
          
          <li class="active">
            Вопрос №<?php echo $data[0]; ?>
          </li>
        </ul>
        <div class="panel panel-default">
            <div class="panel-heading">Просмотр обращения №<?php echo $data[0]; ?> </div>
            <div class="panel-body">
            
      
        
            <p>Текст: <?php echo $data[2]; ?> </p>
            <p>Текст сообщения</p>
            
            <p>Ответы:
             <?php $result = mysql_query("SELECT * FROM support_ask WHERE id_q = " .$_GET['id_view']);
                  
                  while($data = mysql_fetch_row($result))
                  {
                    echo $data[2] . '<br>';
                  }
        ?>
            
            
            
            
            
            </p>
            
            
            <p><a href="reply.php?id_reply=<?php echo $_GET['id_view']; ?>">Ответить</a></p>
            </div>
        </div>
        
    </div>
	</section>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
