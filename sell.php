<?php
include_once('header.php');
?>

<?php
if(isset($_GET['st3'])==1)
{
    echo '<script>
    alert("Необходимо проверить ссылку на обмен");
    </script>';
}
?>
<script>
var abc2 = '';
</script>
<div class="content">
<div class="container">	
    <?php if(auth())
    {
    ?>
	    
		<div class="col-sm-12">
           <a href="#spoiler1" class="spoiler-link">
		      <div class="sell-setting">
			       <header>
                       <b>Основные настройки</b>
			           <span>Ваша ссылка на обмен</span>
			       </header>
			  </div>
		   </a>
		   <script>
		   
		    $(function() 
		    
		    { 
		      $('.trade-popup-btn').click(function () {
                        var b = $(this).attr('rel');
                        $('.od_code').html(b);
                    });
              
              
		          
		        startTimer();
		        
		        $('.rules-link').click(function () {
			            
			            var r_price = $(this).html();
			            r_price = r_price.substring(0, r_price.length - 5);
			            r_price = r_price.replace(",", ".");
			            var r_pr = parseFloat(r_price);
			           $("input[name='price']").val(r_pr);
			            $("input[name='kom']").val(r_pr);
			           
			        });
		        
		        
		        
		     $('.secret-code').focusout(function(){
		         
		         $.ajax({
                                 url: 'ajaxlink.php',
                                 type: "POST",
                                 data: {'link':$(".secret-code").val()},
                                  
            
                       });
                       
                       
                });
                
                $(".edit-popup input[name='price']").change(function(){
                    
                    var b = $(this).val();
                    var c = $(".it_komisia").html();
                    var kom = b-b*c/100;
                    $("input[name='kom']").val(kom);
                    
                });
                
                if($("input[name='price']").val() != null)
                {

                    var b = $(this).val();
                    var c = $(".it_komisia").html();
                    var kom = b-b*c/100;
                    $("input[name='kom']").val(kom);
                }
                 
               
			         
                     $('.refresh').click(function () {
                       
			             $.ajax({
                                 url: 'inventar.php',
                                  success: function(data)
                                  {
                                     
                                   var obj = JSON.parse(data);
                                  
                                   
                                   $('#dat').html("обновленно " + obj.data);
                                   $('.sell-message-stuff').html(obj.cont);
                                      
                                  }
            
                       });
			      
			        });
			        
			        
			        
                
                
		    });
		    
            
             $(document).ready(function() { 
            
            $('.refresh').trigger('click');
            
            });
		   </script>
		   
              <div class="spoiler" id="spoiler1">
			     <div class="spoiler-title">
                 <p>Ваша ссылка на обмен</p><a href="http://steamcommunity.com/profiles/76561198211097556/tradeoffers/privacy">Узнать тут<a>
				 </div>
                 <input class="secret-code" onchange="new_code()" type="text" placeholder="Введите ссылку здесь" onclick="this.placeholder=''" onblur="this.placeholder='Введите ссылку здесь'" size="75" value="<?php echo $use->tradelink; ?>">
				 <div class="spoiler-alert"><img src="img/alert.png"><p>Чтобы не стать жертвой мошенничества, никогда не сообщайте посторонним людям вашу ссылку на обмен!</div>
				 </div>			 
			  <a href="#spoiler2" class="spoiler-link2">
		      <div class="alert-setting">
			       <header>
                       <b>Важнейшие правила обмена!</b>
			           <span>Как не попасться на уловку мошенников? Время совершения обмена?</span>
			       </header>
			  </div>
		   </a>
		   <div class="spoiler" id="spoiler2">
			   <div class="thief">
			     <img src="img/thief.png">
			      <p>Остерегайтесь мошенников!
                    Никогда не отдавайте ваши предметы до того, как вы нажмёте ссылку с текстом 
                    "Передать предметы" на этой странице. И обязательно проверяйте одноразовый код
                    и имя бота в окне обмена (данные для сверки будут отображены на этой странице).</p>
			   </div>
			   <div class="spoiler-time">
			     <img src="img/time.png">
			      <p>Гарантийный срок хранения вещей на наших ботах составляет 4 часа!
                  После этого срока мы не несём ответственности за ваши вещи.
                  В случае проблем с выводом вещей прочтите часто задаваемые вопросы или напишите в <a class="support" href="" name="modal">техподдержку.</a></p>
			   </div>
			   <div class="help-block"><img src="img/market_itemhelp.jpg"></div>
           </div>
           
           <div class="row">
          <div class="stuff-in-buy">
        <div class="col-sm-12">
        <div class="line-background">
                <?php

if(isset($use))
{
    if($use->mob_prov == 0)
    {
    if($use->ssilka_status != 2)
       {
	    echo '<div class="warning-message"><p class="txt_prov1">Мобильный аутентификатор не проверен! Убедитесь что указали правильную ссылку на обмен!</p> <a style="cursor: pointer;" class="ssilka_prov">Проверить</a></div>';
	   }
       else
       {
        echo '<div class="warning-message"><p class="txt_prov1">Мобильный аутентификатор проверен!</p><a style="cursor: pointer;" class="close-mob">Закрыть</a></div>';
       }
       }
}

?>
         <p>Активные продажи и покупки</p>
     </div>
     </div>
     
     <script type="text/javascript">
  function startTimer() {
    
    $('.timer2').each(function(){
        var time = $(this).html();
        var arr = time.split(":");
        
    var h = arr[0];
    var m = arr[1];
    var s = arr[2];
    if (s == 0) {
      if (m == 0) {
        if (h == 0) {
        }
        h--;
        m = 60;
        if (h < 10) h = "0" + h;
      }
      m--;
      if (m < 10) m = "0" + m;
      s = 59;
    }
    else s--;
    if (s < 10) s = "0" + s;
    $(this).html(h+":"+m+":"+s);
    });
    
   
    
    setTimeout(startTimer, 1000);
  }
</script>
     
    <?php 
     
      $result = mysql_query("SELECT items.icon_url, prodazi.price, pokupki.status, prodazi.timestamp, secret FROM pokupki, prodazi, items WHERE prodazi.id_user=" . $use->id . " AND pokupki.id_prodazi = prodazi.id AND items.id = prodazi.id_item AND prodazi.status2=0 ORDER BY prodazi.date DESC") or die('error');
      while($data = mysql_fetch_array($result))
      {
        $dat1 = $data[3];
        $dat2 = time();
        $dat3 = $dat2 - $dat1;
        $dat4 = 3600 - $dat3;
        if($dat4 > 0)
        {
        $hour = ( $dat4 / 3600 ) % 24;
       	$min = ( $dat4 / 60 ) % 60;
        $sec = $dat4 % 60;
        
         
         echo '
       <div class="col-sm-2">
       <div class="stuff-in-buy-item flashing">
       <div class="stuff-in-buy-item-picture">
       <img style="width: 100%; height: 100%; position: absolute; margin: 0; padding: 0;" src="http://steamcommunity-a.akamaihd.net/economy/image/' . $data[0] . '"/>
       <span class="buy-price"><span>'.$data[1].'</span><small> р.</small></span>
       <div class="givemeitem"><a href="" class="trade-popup-btn" rel="'.$data[4].'" name="modal">Передать</a></div>
       <div class="timer"><span title="Гарантия возврата средств при блокировке бота" id="war0">Гарантия: <span class="timer2">'.$hour.':'.$min.':'.$sec.'</span></span></div>
       </div>
       </div>  
       </div> ';
        }
       }
     
     
     
     
     
     
     $result = mysql_query("SELECT items.icon_url, prodazi.price, pokupki.status, prodazi.timestamp, secret, prodazi.status2 FROM pokupki, prodazi, items WHERE pokupki.id_user=" . $use->id . " AND pokupki.id_prodazi = prodazi.id AND items.id = prodazi.id_item AND pokupki.status3 = 0 ORDER BY prodazi.date DESC") or die('error');
     while($data = mysql_fetch_array($result))
     {
        $dat1 = $data[3];
        $dat2 = time();
        $dat3 = $dat2 - $dat1;
        $dat4 = 3600 - $dat3;
        if($dat4 > 0)
        {
        $hour = ( $dat4 / 3600 ) % 24;
       	$min = ( $dat4 / 60 ) % 60;
        $sec = $dat4 % 60;
         
         echo '
       <div class="col-sm-2">
       <div class="stuff-in-buy-item flashing">
       <div class="stuff-in-buy-item-picture">
       <img style="width: 100%; height: 100%; position: absolute; margin: 0; padding: 0;" src="http://steamcommunity-a.akamaihd.net/economy/image/' . $data[0] . '"/>
       <span class="buy-price"><span>'.$data[1].'</span><small> р.</small></span>';
       
       if($data[5] == 1)
       {
       echo '<div class="givemeitem"><a href="" class="trade-popup-btn" rel="'.$data[4].'" name="modal">Получить</a></div>
       <div class="timer"><span title="Гарантия возврата средств при блокировке бота" id="war0">Гарантия: <span class="timer2">'.$hour.':'.$min.':'.$sec.'</span></span></div>';
       }
       else
       {
        echo '<div class="givemeitem-wait"><a href="" class="trade-popup-btn2">Ожидается передача от продавца боту</a></div>';
       }
       echo '</div>
       </div>  
       </div> 
     ';
     }
     }
     
     ?>
     
     </div>
       </div>
           
           
		   <div class="row">
		     <div class="stuff-in-sale">
		       <div class="col-sm-6">
			        <div class="line-background">
					    <p>Ваши предметы на продаже</p>
					</div>
			   </div>
			   
			   
			   <div class="col-sm-3">
			      
				     <div style="cursor: pointer;" class="refresh">
				       <div class="b">Обновить инвентарь</div>
					   <div id ="dat" class="i">обновлено <?php echo $use->dat; ?></div>
				     </div>
				   
			   </div>
			   
			   
			    <div class="col-sm-3">
			       <a href="">
				     <div class="delete"><a style="color: white;" href="ajaxlink.php?del=all">Снять все предметы с продажи</a></div>
				   </a>
			   </div>
		     </div>
			 <div class="stuff-in-sale-add-block">
			       <div class="col-sm-2">
					    <a href="" class="sell-message-btn" name="modal">
						    <div class="stuff-in-sale-add">
					            <div class="stuff-in-sale-add-picture"></div>
				            </div> 
						</a>	
				   </div>
				   
	  <!-- ****************** Текущие предметы на продаже *************************-->
	  
	  
	  
				   <?php 
				   $prodazi = new prodazi();
				   
				   $res = $prodazi->prodazi2($use->id);
				   
				   while($data = mysql_fetch_row($res))
				   {
				   echo '<div class="col-sm-2">
					    <a rel="' . $data[5] . '" href="" class="edit-popup-btn" name="modal">
						    <div class="stuff-in-sale-sell">
					            <div class="stuff-in-sale-sell-picture">
					            <img style="width: 100%; height: 100%; position: absolute; margin: 0; padding: 0;" src="http://steamcommunity-a.akamaihd.net/economy/image/' . $data[1] . '"/>
								  <div class="stat"><span class="edit"><img src="img/edit.png"></span></span><span class="rate" title="Позиция в очереди на продажу" data-rate="4">' . $data[6] . '</span><span class="bestprice" title="Рекомендованная цена">'. $data[0] . '<small>р.</small></span></div>
								</div>
				            </div> 
				            <p style="display: none;" class="it_name">'.$data[3].'</p><p style="display: none;" class="it_price">' . $data[4] . '</p><p style="display: none;" class="it_url">'.$data[1].'</p><p style="display: none;" class="price_2">' . $data[0] . '</p>
						</a>	
				   </div>';
				   }
				   
				   ?>
				   <div class="sell-message">
	<h3>Выберите предмет из вашего инвентаря, который хотите продать!</h3>
	<hr>
	<div style="display: inline-block;" class="sell-message-stuff">
	    <?php  echo $use->get_inventar()  ?>
	    
    </div>
    </div>
    
    
    
    
    <div class="edit-popup">
	<h3>Установите цену продажи!</h3>
	<hr>
	<div style="overflow:hidden">
	    <div class="col-xs-5">
		   <h4>FIVE-SEVEN | Черный глянец</h4>
		   <img src="img/five-seven.png">
		</div>
		<div class="col-xs-7 edit-popup-right">
		   <p>Выставить на продажу с ценой:</p>
		   
		   <form id="sell" method="post" action="ajaxlink.php">
		       <input style="display: none" name="iditem" value="">
		       <input name="price" type="number"><label>р.</label>
			   <input class = "require" type="submit" value="Выставить">
		   </form>
			   
			   
			<div class="geting">
			    <p>С учетом коммисии вы получите</p>
				<div style="float:right"><input name="kom" type="text"><label>р.</label></div>			
			</div>
			<div class="delete-btn"><a class="delet-sell" href="">Снять с продажи</a></div>
		</div>
	</div>	
		<div class="col-xs-12 write">
		    <p>Рекомендуемая цена продажи: <a style="cursor: pointer;" class="rules-link price3">22.66 р.</a></p>
			<p>Из-за ограничения на количество операций, бот предметы дешевле 1 руб. не принимает</p>
			<p>Выставляя предмет на продажу, вы принимаете <a href="" class="rules-link">условия агентского договора.</a></p>
		</div>
    </div>
      </div>			   
  </div>
			   
	<!-- ******************************************************************************** -->		   
	<?php
    
    
    
     } else { ?>
	
	<h3>Необходимо авторизоваться</h3>
	
	<?php } ?>
	
			 
                <div class="row">		   
					<?php include_once('story_sell_only.php'); ?>
				</div>
			
		</div> 
	</div>
	</div>	
	
	
    
    
	
<?php
include_once('footer.php');
?>