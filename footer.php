   <footer>
	<div class="container">
	    <div class="footer-box">
	    <div class="col-sm-3">
		    <ul>
			<h3>Навигация</h3>
		        <li><a href="buy-faq.php">Купить</a></li>
				<li><a href="sell.php">Продать</a></li>
				<li><a href="sell.php">Настройки</a></li>
				<li><a href="howitworking.php">Как это работает</a></li>
				<li><a href="discount.php">Скидка</a></li>
		    </ul>
		</div>
		<div class="col-sm-3">
		    <ul>
			<h3>Помощь</h3>
		        <li><a href="sell-faq.php">Как продать вещи</a></li>
				<li><a href="buy-faq.php">Как купить вещи</a></li>
				<li><a href="input-faq.php">Как пополнить баланс</a></li>
				<li><a href="output-faq.php">Как вывести средства</a></li>
				<li><a name="modal" class="support">Тех.поддержка</a></li>
		    </ul>
		</div>
		<div class="col-sm-3">
		    <ul>
			<h3>Администрация</h3>
		        <li><a href="">unix.company@mail.ru</a></li>
				<li><a href="https://vk.com/unix.shops">ВКонтакте - https://vk.com/unix.shops</a></li>
		    </ul>
		</div>
		<div class="col-sm-3">
		    <ul>
			<h3>Мы принимаем</h3>
		        <ul>
	                <li class="qiwi-img"><img src="img/qiwi.png" alt="qiwi" border="0"></li>
			        <li class="webmoney-img"><img src="img/webmoney.png" alt="webmoney" border="0"></li>
                </ul>
		    </ul>
		</div>
		</div>
		<small>
		    <div class="icon">
		    <div class="col-sm-3">
		        <ul>
			        <li>
					<!--LiveInternet counter--><script type="text/javascript"><!--
                    document.write("<a href='//www.liveinternet.ru/click' "+
                    "target=_blank><img src='//counter.yadro.ru/hit?t52.6;r"+
                    escape(document.referrer)+((typeof(screen)=="undefined")?"":
                    ";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
                    screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
                    ";"+Math.random()+
                    "' alt='' title='LiveInternet: показано число просмотров и"+
                    " посетителей за 24 часа' "+
                    "border='0' width='88' height='31'><\/a>")
                    //--></script><!--/LiveInternet-->
                    </li>
                    <li><a href="https://passport.webmoney.ru/asp/certview.asp?wmid=122923077430" target="_blank" style="text-decoration: none;"><img style="" src="img/v_blue_on_white_ru.png" alt="WMID 122923077430" border="0"></a></li>
				</ul>
		    </div>
			</div>
			<div class="col-sm-7">
			     <p style="margin-top:-5px;">Предоставляемая Вами персональная информация является конфиденциальной и не подлежит разглашению. Все права принадлежат UNIX Company</p>
			</div>
			<div class="col-sm-2">
			   <p>market.csgo.gs © 2015</p>
			</div>
		</small>
	</div>
	</footer>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <div class="message">
	<h3>Обратная связь!</h3>
	<hr>
	<form id="form" name="form" action="<?php echo $_SERVER['HTTP_REFERER']; ?>" method="post">
	   <input name="mail" id="mail" required="required" type="text" placeholder="E-mail" onclick="this.placeholder=''" onblur="this.placeholder='E-mail'">
	   <textarea required="required" name="text" id="text" type="text" placeholder="Введите ваш текст..." onclick="this.placeholder=''" onblur="this.placeholder='Введите ваш текст...'"></textarea>
	   <input name="callback" type="submit" id="submit" class="okay" value="Отправить!"></input>
	</form>    
    </div>
    
    
	
    
    
	
	<div id="mask"></div>
	<script>
$(document).ready(function() { 
    
    var pages2 = 1;
    
    $('.next-button').click(function() {
        
      pages2++;
      if(pages2 > $('.all_page').html())
      {
        pages2 = $('.all_page').html();
      }
      else
      {
      search();
      $('#page').val(pages2);
      }
        
     });
     
     $('.prev-button').click(function() {
        
       pages2--;
       
       if(pages2 < 1)
      {
        pages2 = 1;
      }
      else
      {
      search();
      $('#page').val(pages2);
      }
        
     });
    
    
    
    
    
    
    
    
    var position = 0;
    
     $('.sort-next').click(function() {
        position++;
     $('[class = order][nom='+position + ']').click();
         if(position > 7)
          {
            position = 6;
          }
     });
     
     
     $('.sort-prev').click(function() {
        
        position--;
     $('[class = order][nom='+position + ']').click();
            
            if(position < 1)
          {
            position = 1;
          }
        
     });
    
    
    
    
    
    search();
    
    $('a[name=modal]').click(function(e) {
    e.preventDefault();
    var id = $(this).attr('href');
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();
    $('#mask').css({'width':maskWidth,'height':maskHeight});
    $('#mask').fadeTo("slow",0.8); 
    var winH = $(window).height();
    var winW = $(window).width();
    $(id).css('top',  winH/2-$(id).height()/2);
    $(id).css('left', winW/2-$(id).width()/2);
    $(id).fadeIn(2000); 
    });
    $('.window .close').click(function (e) { 
    e.preventDefault();
    $('#mask, .window').hide();
    }); 
    $('#mask').click(function () {
    $(this).hide();
    $('.window').hide();
    });
    
    
    
    var ord = '';
    
    $('.order').click(function() {
     
     
     ord = $(this).html();
     search();
     $(".order").removeClass("active2");
     $(this).addClass("active2");
     
     
     //css("background", "white");
     
    // $(this).css("background", "#FD9E40");
        
    });
    
    
    
    
    var slovo = '';
    
    
    
    
    

$("input[name=search], input[name=k]").change(function (){
   slovo = $(this).val();
   
   
   
   search(); 
    
});

   
      var old = [$('#sel1 .trigger_demo2').html(), $('#sel2 .trigger_demo2').html(), $('#sel3 .trigger_demo2').html(), $('#sel4 .trigger_demo2').html(), $('#sel5 .trigger_demo2').html(), $('.price-range-min').html(), $('.price-range-max').html()];
       
        setInterval(function () {
            for (var i = 0; i < old.length; i++)
            {
                
            if ($('#sel' + i +  ' .trigger_demo2').html() != old[i] && $('#sel' + i +  ' .trigger_demo2').html() != "Все варианты" && $('#sel' + i +  ' .trigger_demo2').html() != undefined) 
                {
                    old[i] = $('#sel' + i +  ' .trigger_demo2').html();
                    
                    
                    search();
                    
                }
            }
            
            if(old[5] != $('.price-range-min').html() || old[6] != $('.price-range-max').html())
                {
                    old[5] = $('.price-range-min').html();
                    old[6] != $('.price-range-max').html();
                    search();
                }
            
            
                
        }, 100); 

    
   function search()
   {
       
       var old2 = [$('#sel1 .trigger_demo2').html(), $('#sel2 .trigger_demo2').html(), $('#sel3 .trigger_demo2').html(), $('#sel4 .trigger_demo2').html(), slovo, $('.price-range-min').html(), $('.price-range-max').html(), ord, pages2];
      // var b = $('#sel' + id +  ' .trigger_demo2').html();
       var str = "";
       var id_i = 0;
      for (var i=0; i < old2.length; i++)
      {
          
          if (old2[i] != "Все варианты")
          {
              
              str = str +i+": '"+old2[i] + "', ";
              
          }
          
       }
       
       var data2='checks='+JSON.stringify(old2);
       
       var prov = false;
       
       
       
       $.ajax({
                    url: 'search.php',
                    type: "POST",
                    data: data2, 
                    success: function(data)
                     {
                                   //  alert(data);
                                     
                                     
                     //  var obj = JSON.parse(data);
                     //  $('#dat').html("обновленно " + obj.data);
                       $('#katalog').html(data);
                                      
                       }
            
                       }); 
       
   }
       
       
      /* $("a").on('change', function(){
          alert("qwe") 
       }); */
   });  
</script>

<div class="trade-popup">
     <a href="" class="close-btn">Закрыть окно</a>
  <h2>Важная информация для проверки трейда:</h2>
  <p class="trade-alert">Перед тем, как совершить обмен, проверяйте совпадение всех данных, иначе вы можете быть обмануты. Одноразовый код отображается как сообщение пользователя при обмене.</p>
        <p class="bot-nickname">Ник бота: <b>As Blood (FORUM.CSGO.GS)</b></p>
  <p class="bot-code">Одноразовый код: <b class="od_code"> к примеру B0QN</b></p>
  <p><b>Завершите операцию одним из способов:</b></p>
  <p class="error-alert">При <span>ЛЮБОЙ</span> ошибке попробуйте <span>ВСЕ</span> способы подтверждения!</p>
  <div class="trade-btn-block">
      <a href="http://steamcommunity.com/profiles/<?php if(auth()) echo $_SESSION['steamid']; ?>/tradeoffers/"><p>1 способ. Подтвердить 
   <br>через <b>сайт</b></p></a>
   <a href="steam://url/TradeOffers/"><p>2 способ. Подтвердить 
   <br>через <b>клиент</b></p></a>
  </div>
  <p class="steam-client">3 способ. Подтвердите предложение об обмене <b>вручную</b> в <a href="">клиенте Steam.</a></p>
  <p class="trade-alert-time">Вы должны подтвердить операцию в течение 1 минуты</p>
 </div>
 
</body>
<script src="js/index.js"></script>
<script src="js/support.js"></script>
<script src="js/select.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="jquery.json-2.3.min.js"></script>
 
<!----------trigger-----------> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/spoiler.js"></script>
        
        <script type="text/javascript" src="js/select-jquery.min.js"></script>
 <script type="text/javascript" src="js/select-jquery-ui.min.js"></script>
 <script src="js/range.js"></script>
 <link rel="stylesheet" href="css/jquery-ui.css">

</html>