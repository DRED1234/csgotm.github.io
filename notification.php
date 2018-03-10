<?php include_once('header.php'); ?>
<div class="content">
	    <div class="container">	 
<div style="overflow:hidden">
             <div class="col-sm-12">
			    <div class="notification">
					<h3>Настройка оповещений через браузер</h3>
					<p>При покупке Вашей вещи, появится окно в правом нижнем углу монитора (даже если браузер свернут в трей) 
					и прозвучит разовый звуковой сигнал. Если у Вас будет закрыта вкладка с нашим сайтом, то оповещения не произойдет.</p>
					
					<?php if(isset($_GET['id']))
					{
					    $use->up_note($_GET['id'], $_GET['value']);
					    
					  
					}
					   ?>
					<div class="notification-btn"><a href="notification.php?id=1&value=<?php if($use->not1 == 0) echo '1'; else echo '0'; ?>"><input type="submit" value="<?php if($use->not1 == 0) echo 'Включить'; else echo 'Выключить'; ?> оповещения через браузер"></div></a>
					<h3>Настройка оповещений по e-mail</h3>
					<p>Вы будете получать уведомления на ваш почтовый адрес</p>
					<div class="notification-btn"><a href="notification.php?id=2&value=<?php if($use->not2 == 0) echo '1'; else echo '0'; ?>"><input type="submit" value="<?php if($use->not2 == 0) echo 'Включить'; else echo 'Выключить'; ?> оповещения через почту"></div></a>
				</div>
             </div>		
		     </div>
		     
             <?php include_once('story_sell_only.php'); ?>
             
		</div> 
	</div>


<?php include_once('footer.php') ?>