<?php include ("header.php") ?>
<section class="content">
	    <div class="container">
		    <ul class="breadcrumb">
               <li><a href="/admin"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
               <li>Финансы</li>
               <li class="active">Пополнения</li>
            </ul>
			<div class="panel panel-default">
            <div class="panel-heading">Все Заявки на Ввод</div>
            <div class="panel-body">
                    <table class="table table-striped table-hover ">
                      <thead>
                        <tr>
                          <th>id</th>
                          <th>Дата</th>
                          <th>Тип</th>
                          <th>Сумма</th>
                          <th>Метод</th>
                          <th>Кошелек</th>
                          <th>Пользователь</th>
                          <th>Статус</th>
                          <th>Операции</th>
                        </tr>
                      </thead>
                      <tbody>
                               <?php  
           $page = 1;
   if(isset($_GET['page']))
   {
    $page = $_GET['page'];
   }
   $start = 15*$page - 15;
           
           
           $result = mysql_query("SELECT *, users.urprof as ar FROM pay_in, users WHERE users.id = id_user LIMIT $start, 15");
            
                      while($data = mysql_fetch_array($result))
                        {
                      
                        echo '<tr>
                        <td>'.$data[0].'</td>
                        <td>'.$data[4].'</td>
                        <td>
                            <a class="btn btn-default btn-xs" href="/admin/fin/in"><span class="glyphicon glyphicon-arrow-left text-success" aria-hidden="true"></span></a>
                        </td>
                        <td>'.$data[2].'</td>
                        <td>'.$data[3].'</td>
                        <td></td>
                        <td><a href="/admin/fin/user/4">'.$data['ar'].'</a></td>
                        <td>';
                           
                       switch($data[5])
                        {
                           case 0: echo '<span class="badge">проверка</span>'; break;
                           case 1: echo '<span class="badge">обработано</span>'; break;
                           case 2: echo '<span class="badge">отказано</span>'; break;
                         }  
                           
                        echo '</td>
                        <td>
                            <a href="support_request.php?id_fin_otk='.$data[0].'" class="btn btn-xs btn-primary">Отказать</a>
                            <a href="support_request.php?id_fin_obr='.$data[0].'" class="btn btn-xs btn-warning">Обработать</a>
                        </td>
                        </tr>';
                        }
                  ?> 
                  
                  <!--     
						<tr>
                        <td>236</td>
                        <td>2015-09-17 14:28:15</td>
                        <td>
                            <a class="btn btn-default btn-xs" href="/admin/fin/in"><span class="glyphicon glyphicon-arrow-left text-success" aria-hidden="true"></span></a>
                        </td>
                        <td>301.00</td>
                        <td>wmr</td>
                        <td>R408027067567</td>
                        <td><a href="/admin/fin/user/4">admin@admin.ru</a></td>
                        <td>
                           <span class="badge">обрабатывается</span>
                        </td>
                        <td>
                            <a href="/admin/fin/208/setok" class="btn btn-xs btn-success">Подтвердить</a>
                        </td>
                        </tr>
						<tr>
                        <td>236</td>
                        <td>2015-09-17 14:28:15</td>
                        <td>
                            <a class="btn btn-default btn-xs" href="/admin/fin/in"><span class="glyphicon glyphicon-arrow-left text-success" aria-hidden="true"></span></a>
                        </td>
                        <td>301.00</td>
                        <td>wmr</td>
                        <td>R408027067567</td>
                        <td><a href="/admin/fin/user/4">admin@admin.ru</a></td>
                        <td>
                           <span class="badge">выполнено</span>
                        </td>
                        <td>
                            <a href="/admin/fin/209/delete" class="btn btn-xs btn-default">Удалить</a>
                        </td>
                        </tr>
                        
                        -->
                    </tbody>
                    </table> 
            </div> 
			
                      <div align="center">
              <ul class="pagination"><?php
   $result = mysql_query("SELECT COUNT(*) FROM pay_in");
   $data = mysql_fetch_row($result);
   $all_page = ceil($data[0] / 17);
   $t_p = 1;
   if(isset($_GET['page']))
   {
    $t_p = $_GET['page'];
   }
   if($t_p > 1)
   {
    $t_p1 = $t_p-1;
     echo '<li><a href="fin-in.php?page='.$t_p1.'" rel="next">';
    
   }
   else
   {
    echo '<li class="disabled">';
   }
 ?>
            <span>«</span></a></li>
              
   <?php
   
  
   if(isset($_GET['page']))
   {
    $t_p=$_GET['page'];
   }
   
   for($i = 1; $i<= $all_page; $i++)
   {
     
    
    if($i == $t_p)
    {
       echo '<li class="active">';
    }
    else
    {
        echo '<li>';
    }
    echo '<a href="fin-in.php?page='.$i.'"><span>'.$i.'</span></a></li>'; 
   }
   
   ?>
              
              
         <?php
         
            if($all_page == $t_p)
            {
                echo '<li class="disabled">';
            }
            else
            {
                $t_p2 = $t_p+1;
               echo '<li><a href="fin-in.php?page='.$t_p2.'" rel="next">';
            }
         
         ?>  
         <span>»</span></a></li></ul>
            </div>	
            
            
        </div>
		<div class="row text-center">
            <span class="label"><a href="index.php">Админка</a></span>
        </div>
		</div>
	</section>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>