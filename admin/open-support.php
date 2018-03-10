<?php include ("header.php") ?>
	<section class="content">
	    <div class="container">
		    <ul class="breadcrumb">
               <li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
               <li><a href="support.php">Поддержка</a></li>
               <li class="active">Открытые обращенияы</li>
            </ul>
			<div class="panel panel-default">
            <div class="panel-heading">Открытые обращения в поддержку</div>
            <div class="panel-body">
                    <table class="table table-striped table-hover ">
                    <thead>
                        <tr>
                           <th>id</th>
                           <th>Пользователь</th>
                           <th>Текст</th>
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
   
   $result = mysql_query("SELECT * FROM support WHERE status = 1 LIMIT $start, 15");
   
            while($data = mysql_fetch_row($result))
   
                {
                        echo '<tr>
                            <td>'.$data[0].'</td>
                            <td>'.$data[1].'</td>
                            <td>'.$data[2].'</td>
                            <td>
                               <a href="view.php?id_view='.$data[0].'" class="btn btn-xs btn-info" title="просмотреть"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                <a href="reply.php?id_reply='.$data[0].'" class="btn btn-xs btn-warning" title="ответить"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                <a href="support_request.php?id_close='.$data[0].'" class="btn btn-xs btn-danger" title="прочитано"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                            </td>
                        </tr>';
                }
                        
   ?>
                        
                        
                        
					
                    </tbody>
                    </table> 
                            </div>
           
                  <div align="center">
              <ul class="pagination"><?php
   $result = mysql_query("SELECT COUNT(*) FROM support WHERE status = 1");
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
     echo '<li><a href="open-support.php?page='.$t_p1.'" rel="next">';
    
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
    echo '<a href="open-support.php?page='.$i.'"><span>'.$i.'</span></a></li>'; 
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
               echo '<li><a href="open-support.php?page='.$t_p2.'" rel="next">';
            }
         
         ?>  
         <span>»</span></a></li></ul>
            </div>	
           
           
		<div style="margin-bottom:20px;" class="row text-center">
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
