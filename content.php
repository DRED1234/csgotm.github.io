<div class="content">

	    <div class="container">	    
        
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
                <div style="overflow:hidden; padding-bottom:20px;">	
		        <div class="col-sm-4">
				<div class="sidebar">
				    <form class="search" onsubmit="return false;">
					    <input value="" type="submit">
				        <input name="search" placeholder="Поиск по названию" type="text">
	                </form>
					<span class="b-new" style="width:100%;">Стоимость руб. :</span>
					<div id="slider" style="margin-bottom:30px;"></div>
					<p id="sel1" style="margin:0;">
					<span class="b-new" style="width:100%;">Раритетность:</span>
					<select class="turnintodropdown_demo2">
					    <option>Все варианты</option>
						<option>Ширпотреб</option>
						<option>Базового класса</option>
						<option>Запрещеное</option>
						<option>Промышленное качество</option>
						<option>Тайное</option>
						<option>Засекреченое</option>
						<option>Армейское качество</option>
						<option>Экстраординарного типа</option>
						<option>Обычное</option>
						<option>Высшего класса</option>
				     </select>
					</p>
					<p id="sel2" style="margin:0;">
					<span class="b-new" style="width:100%;">Тип:</span>
					<select class="turnintodropdown_demo2">
						<option>Все варианты</option>
						<option>Снайперская винтовка</option>
						<option>Контейнер</option>
						<option>Пистолет</option>
						<option>Винтовка</option>
						<option>Дробовик</option>
						<option>Нож</option>
						<option>Пистолет-пулемёт</option>
						<option>Пулемёт</option>
						<option>Инструмент</option>
						<option>Колекционный</option>
						<option>Ключ</option>
						<option>Наклейка</option>
						<option>Набор музыки</option>
				    </select>
					</p>
					<p id="sel3" style="margin:0;">			
					<span class="b-new" style="width:100%;">Качество:</span>
					<select id="sel" class="turnintodropdown_demo2">
						<option>Все варианты</option>
						<option>После полевых испытаний</option>
						<option>Немного поношенное</option>
						<option>Прямо с завода</option>
						<option>Закаленое в боях</option>
						<option>Поношенное</option>
						<option>Не покрашено</option>
				    </select>
					</p>
					<p id="sel4" style="margin:0;">
					<span class="b-new" style="width:100%;">Оружие:</span>
					<select class="turnintodropdown_demo2">
						<option>Все варианты</option>
						<option>SCAR-20</option>
						<option>P250</option>
						<option>FAMAS</option>
						<option>AK-47</option>
						<option>Five-SeveN</option>
						<option>Sawed-Off</option>
						<option>G3SG1</option>
						<option>Nova</option>
						<option>Складной нож</option>
						<option>ПП-19 Бизон</option>
						<option>Glock-18</option>
						<option>Desert Eagle</option>
						<option>P90</option>
						<option>AWP</option>
						<option>MP9</option>
						<option>SG 553</option>
						<option>AUG</option>
						<option>CZ75-Auto</option>
						<option>M249</option>
						<option>SSG 08</option>
						<option>Tec-9</option>
						<option>M4A1-S</option>
						<option>P2000</option>
						<option>UMP-45</option>
						<option>Negev</option>
						<option>MAC-10</option>
						<option>USP-S</option>
						<option>Galil AR</option>
						<option>MP7</option>
						<option>XM1014</option>
						<option>Dual Berettas</option>
						<option>MAG-7</option>
						<option>M4A4</option>
				    </select>
					</p>
				</div>
				</div>
				<div class="col-sm-8">
				    <div class="content-stuff">
					    <div class="stuff-filtr">
						    <ul>
							    <li>Сортировать по:</li>
								<li><a class="order" nom="1">Популярности</a></li>
								<li><a class="order" nom="2">Выгоде</a></li>
								<li><a class="order" nom="3">Цене</a></li>
								<li><a class="order" nom="4">Количеству</a></li>
								<li><a class="order" nom="5">Названию</a></li>
								<li><a class="order" nom="6">Дате</a></li>								
							</ul>
							<div class="sort-button">
			                <a><span style="" class="sort-prev" onclick="things.shopSorterMove('prev');"></span></a>
			                <a><span style="" class="sort-next" onclick="things.shopSorterMove('next');"></span></a>
		                    </div>
						</div>
					<div id="katalog">
						
						</div>
					</div>
                    <?php $result = mysql_query("SELECT count(*) FROM prodazi WHERE status = 0");
                    $data = mysql_fetch_row($result);
                    $all = ceil($data[0] / 16);
                    ?>
					<div class="navigation">
					    <div class="col-xs-4">
						   <div class="prev-button"><a style="cursor: pointer;">Предыдущая страница</a></div>						   
						</div>
						<div class="col-xs-4" style="text-align:center; margin-top:-5px;">
						   <input id="page" value="1" type="phone"><label>из <span class="all_page"><?php echo $all; ?></span></label>
						</div>
						<div class="col-xs-4">
						   <div class="next-button"><a style="cursor: pointer">Следующая страница</a></div>
						</div>
					</div>
					<div class="navigation-mobile">
					    <div class="col-sm-12">
					        <ul>
							    <li><div style="float:left;"><a href="" class="prev-button-mobile"></a></div></li>
								<li><input id="page-mobile" value="1" type="phone"><label>из 122</label></li>
								<li><div style="float:right;"><a href="" class="next-button-mobile"></a></div></li>
							</ul> 
						</div>
					</div>
					
				</div>
				</div>
            <?php include_once('story_sell_only.php'); ?>
		</div> 
	</div>