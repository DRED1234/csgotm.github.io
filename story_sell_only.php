				<div class="story-block">
				<div class="col-sm-9">
				    <div class="story-stuff">
				       <p>История покупок на нашей площадке </p>
				    </div>
				</div>
				<div class="col-sm-3">
				    <div class="story-btn">
				        <?php  $result = mysql_query("SELECT COUNT(*) FROM items, prodazi, pokupki WHERE items.id = prodazi.id_item AND prodazi.id = pokupki.id_prodazi AND pokupki.status=1") or die(mysql_error($result));
				        $data = mysql_fetch_row($result);
				       echo '<a href="story-sell.php">Всего '.$data[0].' покупок</a>';
				       ?>
				    </div>
				</div>			
				</div>
				<div class="story-sell">
				    
				<?php  $result = mysql_query("SELECT name, icon_url, date, price, items.id FROM items, prodazi, pokupki WHERE items.id = prodazi.id_item AND prodazi.id = pokupki.id_prodazi AND pokupki.status=1 ORDER BY date DESC LIMIT 6") or die(mysql_error($result));
	
	while($data = mysql_fetch_row($result))
	{
				        echo '<div class="col-sm-2">
						    <div class="stuff">
          
						        <a href="item.php?it_id='.$data[4].'"><img src="http://steamcommunity-a.akamaihd.net/economy/image/'.$data[1].'">
								<div class="time">'.$data[2].'</div>
								<div class="price">'.$data[3].' руб.</div>
								<div class="title">'.$data[0].'</div>
	                            </a>
						    </div>
						</div>';
	}
						
						?>
						
				</div>	