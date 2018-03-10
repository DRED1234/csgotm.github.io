<?php
include_once('header.php');
?>

	<div class="content">
	    <div class="container">	    
		<div style="overflow:hidden">
             <div class="col-sm-8">
			     <div class="discount">
				 <h3>Накопительные скидки</h3> 
					<p>Всем пользователям нашего маркета мы предлагаем накопительные скидки. Скидка начинает накапливаться, как только вы начинаете пользоваться сервисом, и растёт с каждой покупкой и продажей.</p>
                    <p>Размер скидки при покупке зависит от общей суммы, потраченной в магазине, а размер комиссии при продаже — от суммарной стоимости ваших вещей.</p>
                    <p><b>Пример зависимости скидки от оборота:</b></p>
                     <div class="col-sm-6" style="padding:0; margin-bottom:20px;">
                        <table class="table-v1 td-regular user-market-rate" width="100%" cellpadding="5px">
                        <tbody><tr>
                        <th>Потрачено в магазине	</th>
                        <th>Скидка на покупки</th>
                        </tr>
					    <tr>
                          <td align="right">0 руб.</td>
                          <td>0%</td>
                        </tr>
					    <tr>
                          <td align="right">1 руб.</td>
                          <td>0%</td>
                        </tr>
						<tr>
                          <td align="right">10 руб.</td>
                          <td>0%</td>
                        </tr>
						<tr>
                          <td align="right">100 руб.</td>
                          <td>0%</td>
                        </tr>
						<tr>
                          <td align="right">1000 руб.</td>
                          <td>1%</td>
                        </tr>
						<tr>
                          <td align="right">10000 руб.</td>
                          <td>2%</td>
                        </tr>
						<tr>
                          <td align="right">100000 руб.</td>
                          <td>3%</td>
                        </tr>
						<tr>
                          <td align="right">1000000 руб.</td>
                          <td>4%</td>
                        </tr>
						<tr>
                          <td align="right">10000000 руб.</td>
                          <td>5%</td>
                        </tr>
						<tr>
                          <td align="right" style="color:red">Ваш оборот (число оборота).</td>
                          <td style="color:red">(число скидки).</td>
                        </tr>
                       </tbody>
					   </table>
                    </div>
					<div class="col-sm-6" style="padding:0; ">
                        <table class="table-v1 td-regular user-market-rate" width="100%" cellpadding="5px">
                        <tbody><tr>
                        <th>Получено с продаж</th>	
                        <th>Комиссия при продаже</th>
                        </tr>
					    <tr>
                          <td align="right">0 руб.</td>
                          <td>0%</td>
                        </tr>
					    <tr>
                          <td align="right">1 руб.</td>
                          <td>0%</td>
                        </tr>
						<tr>
                          <td align="right">10 руб.</td>
                          <td>0%</td>
                        </tr>
						<tr>
                          <td align="right">100 руб.</td>
                          <td>0%</td>
                        </tr>
						<tr>
                          <td align="right">1000 руб.</td>
                          <td>9%</td>
                        </tr>
						<tr>
                          <td align="right">10000 руб.</td>
                          <td>8%</td>
                        </tr>
						<tr>
                          <td align="right">100000 руб.</td>
                          <td>7%</td>
                        </tr>
						<tr>
                          <td align="right">1000000 руб.</td>
                          <td>6%</td>
                        </tr>
						<tr>
                          <td align="right">10000000 руб.</td>
                          <td>5%</td>
                        </tr>
						<tr>
                          <td align="right" style="color:red">Ваша коммисия (число).</td>
                          <td style="color:red">(число коммисии).</td>
                        </tr>
                       </tbody>
					   </table>
                    </div>
				 </div>
             </div>		
			 <div class="col-sm-4">
			     <div class="howitwork-ask">
                      <p>Если у вас появились какие-то вопросы, вы можете задать их менеджеру сайта.</p>
					  <div class="howitwork-button"><a class="support" name="modal">Задать вопрос!</a></a></div>
			     </div>
             </div>	
		     </div>	   
				<?php include_once('story_sell_only.php'); ?>	
		</div> 
	</div>

<?php
include_once('footer.php');
?>