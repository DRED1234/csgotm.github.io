<?php include ("header.php") ?>
<section class="content">
	    <div class="container">
		    <ul class="breadcrumb">
               <li><a href="/admin"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
               <li>Финансы</li>
               <li class="active">Выводы</li>
            </ul>
			<div class="panel panel-default">
            <div class="panel-heading">Все Заявки на Вывод</div>
            <div class="panel-body">
                    <table class="table table-striped table-hover ">
                    <thead>
                        <tr>
                          <th>id</th>
                          <th>Дата</th>
                          <th>Тип</th>
                          <th>Сумма</th>
                          <th>К Оплате</th>
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
           
           
           $result = mysql_query("SELECT *, users.urprof as ar FROM pay_out, users WHERE users.id = id_user ORDER BY date DESC LIMIT $start, 15");
           
                        while($data = mysql_fetch_array($result))
                        {
                            $percent = $data[2] - ($data[2] * 0.05);
                            
                           echo '<tr>
                                <td>'.$data[0].'</td>
                                <td>'.$data[4].'</td>
                                <td>
                                    <a class="btn btn-default btn-xs" href="/admin/fin/out"><span class="glyphicon glyphicon-arrow-right text-danger" aria-hidden="true"></span></a>
                                </td>
                                <td>'.$data[2].'</td>
                                <td>'.$percent.'</td>
                                <td>'.$data[5].'</td>
                                <td>'.$data[3].'</td>
                                <td><a href="/admin/fin/user/415">'.$data['ar'].'</a></td>';
                                
                               switch($data['status'])
                               { 
                             case (2): echo ' <td>
                                    <span class="badge">выполнено</span>
                                    </td>
                                    <td>
                                    <a href="fin_out_obr.php?id_del='.$data[0].'" class="btn btn-xs btn-default">Удалить</a>
                                    </td>    
                                    </tr>'; break;
                                    
                             case (0): echo ' 
                                    <td>
                                    <span class="badge">проверка</span>
                                    </td>
                                    <td>
                                    <a href="fin_out_obr.php" class="btn btn-xs btn-primary">Отказать</a>
                                    <a href="fin_out_obr.php?id_obr='.$data[0].'" class="btn btn-xs btn-warning">Обработать</a>
                                    </td>
                                    </tr>'; break;
                                    
                             case (1): echo ' 
                                    <td>
                                    <span class="badge">обрабатывается</span>
                                    </td>
                                    <td>
								    <a href="fin_out_obr.php?id_pod='.$data[0].'" class="btn btn-xs btn-success">Подтвердить</a>
                                    </td>
                                    </tr>'; break;
                                         
                            
                                }
                            
                        }
                            
           ?>       
                            
                        </tbody>
                    </table> 
            </div>
                      <div align="center">
              <ul class="pagination"><?php
   $result = mysql_query("SELECT COUNT(*) FROM pay_out");
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
     echo '<li><a href="fin-out.php?page='.$t_p1.'" rel="next">';
    
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
    echo '<a href="fin-out.php?page='.$i.'"><span>'.$i.'</span></a></li>'; 
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
               echo '<li><a href="fin-out.php?page='.$t_p2.'" rel="next">';
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