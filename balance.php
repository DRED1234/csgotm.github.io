<?php

if(isset($_POST['wallet']))
{
    session_start();
    include_once('functions.php');
    $use = new user($_SESSION['steamid']);
    $balanc = $use->balance;
    if($balanc < $_POST['sum'])
    {
      header('Location: http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?stat=2');   
    }
    else
    {
    $arr1 = array('id_user', 'sum', 'wallet', 'date', 'type');
    $arr2 = array($use->id, $_POST['sum'], $_POST['wallet'], date('Y-m-d h:m:s'), $_POST['type']);
    insert("pay_out", $arr1, $arr2);
    $use->update_balance('-'.($_POST['sum']*5/100)-$_POST['sum']);
    header('Location: http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?stat=1');
    }
}
else
{
    include_once("header.php");
}

if(isset($_GET['stat']))
{
    if($_GET['stat'] == 1)
    {
    echo '<script>
        alert("Заявка принята!");
    </script>';
    unset($_GET);
    }
    else
    {
       echo '<script>
        alert("Недостаточно средств!");
    </script>';
    unset($_GET); 
    }
}
?>


	<div class="content">
	    <div class="container">	    
		<div style="overflow:hidden">
             <div class="col-sm-12">
			    <div class="notification">
					<section class="tabs">
	                <input id="tab_1" type="radio" name="tab" checked="checked" />
	                <input id="tab_2" type="radio" name="tab" />
	                <input id="tab_3" type="radio" name="tab" />
	                <label for="tab_1" id="tab_l1">Пополнение счета</label>
	                <label for="tab_2" id="tab_l2">Вывод денег со счета</label>
	                <label for="tab_3" id="tab_l3">Заявки на вывод</label>
	               <div style="clear:both"></div>

	            <div class="tabs_cont">
            
            
            <div id="tab_c1">
            <form id="payment" name="payment" method="post" action="https://sci.interkassa.com/" enctype="utf-8">    
            <input type="hidden" name="ik_co_id" value="5633ba333d1eafa5668b456a" />
            <input type="hidden" name="ik_pm_no" value="ID_4233" />
            <input type="hidden" name="ik_cur" value="RUB" />
            <input type="hidden" name="ik_desc" value="<?php echo $_SESSION['steamid']; ?>" />
			<h3>Пополнение личного счёта.</h3>
			<p>1. Выберите платёжную систему</p>
			<div class="paytype pay_icon icon_interkassa paytypesel" name="QIWI"></div>
			<p>2. Введите сумму, на которую вы хотите пополнить ваш личный счёт, и нажмите на кнопку "Пополнить". 
			Вы будете переадресованы на сайт платёжной системы, где вы сможете завершить платеж.</p>
			<ul class="pay-plus">
			   <li><input name="ik_am" type="number"></li>
			   <li><input type="submit" value="Пополнить"></li>
			</ul>
            </form>
            </div>
            
        
        <script>
        $(function() {
            
        $(".icon_qiwi" ).click(function() {
                $(".icon_qiwi" ).addClass("paytypesel");
                $(".icon_webmoney" ).removeClass("paytypesel");
                $(".qiwi_text").html("2. Введите номер вашего счета:");
                $("#type").val("qiwi");
                
        });
        
        
        
        $(".icon_webmoney" ).click(function() {
                $(".icon_webmoney" ).addClass("paytypesel");
                $(".icon_qiwi" ).removeClass("paytypesel");
                $(".qiwi_text").html("2. Введите номер вашего WMR кошелька:");
                $("#type").val("wm");
                
        });
        
            
            });
        
        </script>
        
		<div id="tab_c2">
        <form action="balance.php" method="POST">
			<h3>Правила вывода средств из системы:</h3>
			<p>1. Вывод производится на кошелёк WebMoney и Qiwi Wallet. Вывод на другие платёжные системы не производится.</p>
			<p>2. В случае указания неправильного номера кошелька средства не возвращаются.</p>
            <p>3. Процесс обработки заявки на вывод обычно занимает менее часа, но в некоторых ситуациях может занять до 3 рабочих дней.</p>
			<h3>Вывести средства:</h3>
			<p>1. Выберите платежную систему:</p>
			<div class="paytype pay_icon icon_qiwi paytypesel" name="QIWI"></div>
            <div class="paytype pay_icon icon_webmoney" data-biller="wmi" data-currency="WMR" name="Webmoney"></div>
			<p class="phone-text"><span class="qiwi_text">2. Введите номер вашего счета:</span><input id="phone" type="text" name="wallet"><input style="display: none;" id="type" type="text" name="type" value="qiwi"></p>
			<p>3. Введите сумму, которую желаете снять, и нажмите на кнопку "Вывести". Ваша заявка будет обработана в течение 3 дней.</p>
			<p>Внимание! комиссия на вывод составляет 5%.</p>
			<ul class="pay-plus">
			   <li><input name="sum" type="number"></li>
			   <li><input type="submit" value="Вывести"></li>
			</ul>
            </form>
		</div>
        
        
		<div id="tab_c3">
			<h3>Заявки на вывод средств:</h3>
			<table class="table-v1 td-regular user-market-rate" width="100%" cellpadding="5px">
               <tbody>
			   <tr>
                 <th>Номер</th>
                 <th>Создана</th>
                 <th>Сумма</th>
                 <th>Кошелёк</th>
                 <th>Статус</th>
                 <th>Дата перевода</th>
               </tr>
      <?php $result = mysql_query("SELECT * FROM pay_out WHERE id_user = " . $use->id);
        
        while($data = mysql_fetch_row($result))
        {
            echo '<tr align="center">
                  <td>'.$data[0].'</td>
                  <td>'.$data[4].'</td>
                  <td>'.$data[2].'<img style="margin-left:5px;" src="img/rub.png"></td>
                  <td>'.$data[3].'</td>';
                  
                  if($data[6] == 2)
                  {
                    echo '<td>Переведена</td>';
                  }
                  else 
                  {
                    echo '<td>Не переведена</td>';
                  }
                    echo '<td>'.$data[7].'</td>
               </tr>';
        }
               
      ?>    
			   </tbody>
			</table>
	  </div>
	 </div>
</section>
				</div>
             </div>		
		     </div>	   
				
                <?php include_once('story_sell_only.php'); ?>	
		</div> 
	</div>
    
    <?php include_once('footer.php');?>
