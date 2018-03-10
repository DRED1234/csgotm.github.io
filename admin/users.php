<?php include ("header.php") ?>
	<section class="content">
	    <div class="container">
		<ul class="breadcrumb">
          <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
          <li>Пользователи</li>
        </ul>
		<div class="panel panel-default">
          <div class="panel-heading">Все Рекламодатели</div>
          <div class="panel-body">
            <table class="table table-striped table-hover ">
              <thead>
                <tr>
                  <th>id</th>
                  <th>Имя</th>
                  <th>ip</th>
                  <th>Баланс</th>
                  <th>Активность</th>
                  <th>Управление</th>
                </tr>
              </thead>
              <tbody>
              
        <script>
         $(function() {
            
             $('.user_del').click(function () {
			            
			            alert("Вы действительно хотите удалить?");
			           
			        });
            
            });
        </script> 
              
<?php 
           $page = 1;
   if(isset($_GET['page']))
   {
    $page = $_GET['page'];
   }
   $start = 15*$page - 15;
   
$result = mysql_query("SELECT * FROM users LIMIT $start, 15") or die("err");

while($data = mysql_fetch_row($result))
{

                echo '<tr>
                    <td>'.$data[0].'</td>
                    <td>'.$data[4].'</td>
                    <td>'.$data[11].'</td>
                    <td>'.$data[3].'</td>
                                          <td>Нет</td>
                                        <td>
                      
                      <a href="support_request.php?id_user_del='.$data[0].'" class="user_del btn btn-xs btn-danger">Удалить</a>
                    </td>
                  </tr>';
}
                  
?> 
            </table>
		
                              <div align="center">
              <ul class="pagination"><?php
   $result = mysql_query("SELECT COUNT(*) FROM users");
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
     echo '<li><a href="users.php?page='.$t_p1.'" rel="next">';
    
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
    echo '<a href="users.php?page='.$i.'"><span>'.$i.'</span></a></li>'; 
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
               echo '<li><a href="users.php?page='.$t_p2.'" rel="next">';
            }
         
         ?>  
         <span>»</span></a></li></ul>
            </div>
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
