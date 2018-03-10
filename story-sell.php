<?php include_once("header.php"); ?>

	<div class="content">
	    <div class="container">	                   
				<div class="last-sell-block">
				   <div class="col-sm-12">
				       <h3>Последние покупки:</h3>
				   </div>
				</div>
				
				<div class="story-sell">
	<?php  $result = mysql_query("SELECT name, icon_url, date, price, items.id FROM items, prodazi, pokupki WHERE items.id = prodazi.id_item AND prodazi.id = pokupki.id_prodazi AND pokupki.status=1 ORDER BY date DESC LIMIT 36") or die(mysql_error($result));
	
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
				<div class="exspensive-sell-block">
				   <div class="col-sm-12">
				       <h3>Самые дорогие за 24 часа:</h3>
				   </div>
				</div>
				
				<div class="story-sell">
	 <?php 
	  $result = mysql_query("SELECT name, icon_url, date, price, items.id FROM items, prodazi, pokupki WHERE items.id = prodazi.id_item AND prodazi.id = pokupki.id_prodazi AND pokupki.status=1 AND prodazi.date <= now() AND prodazi.date >= SUBDATE(now(), INTERVAL 1 DAY) ORDER BY price DESC LIMIT 36") or die(mysql_error($result));
	  
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
				<div class="exspensive-all-sell-block">
				   <div class="col-sm-12">
				       <h3>Самые дорогие за все время:</h3>
				   </div>
				</div>
				<div class="story-sell">
				    <?php 
	  $result = mysql_query("SELECT name, icon_url, date, price, items.id FROM items, prodazi, pokupki WHERE items.id = prodazi.id_item AND prodazi.id = pokupki.id_prodazi AND pokupki.status=1 ORDER BY price DESC LIMIT 36") or die(mysql_error($result));
	  
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
				<div class="hour-sell-block">
				   <div class="col-sm-12">
				       <h3 style="margin-bottom:20px;">Количество покупок в час:</h3>
				   </div>
				</div>



		<link href="assets/css/xcharts.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">

	
			<div id="placeholder">
				<figure style="width: 100%;" id="chart"></figure>
			</div>
      


	

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	

		<!-- xcharts includes -->
		<script src="//cdnjs.cloudflare.com/ajax/libs/d3/2.10.0/d3.v2.js"></script>
			
		<script src="assets/js/xcharts.min.js"></script>

		<!-- The daterange picker bootstrap plugin -->
		<script src="assets/js/sugar.min.js"></script>
		<script src="assets/js/daterangepicker.js"></script>
		<!-- Our main script file -->
		<script src="assets/js/script.js"></script>
	
		
        	

		
		
		
  <script>      
  
  
  function month_name(num) {
var month = ['', 'Январь','Февраль','Март','Апрель','Май','Июнь',
'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'];
return month[num];
}
  
  
  $(function() {

	// Set the default dates
	var startDate	= Date.create().addDays(-6),	// 7 days ago
		endDate		= Date.create(); 				// today



	// Load chart
	ajaxLoadChart(startDate,endDate);
	
	// The tooltip shown over the chart
	var tt = $('<div class="ex-tooltip">').appendTo('body'),
		topOffset = -32;

	var data = {
		"xScale" : "linear",
		"yScale" : "linear",
		"main" : [{
			className : ".stats",
			"data" : []
		}]
	};

	var opts = {
		paddingLeft : 50,
		paddingTop : 20,
		paddingRight : 10,
		axisPaddingLeft : 25,
		tickHintX: 8, // How many ticks to show horizontally
        
        
		"mouseover": function (d, i) {
			var pos = $(this).offset();
			tt.text(d.x.format('{dd}') + ': ' + d.y).css({
				top: topOffset + pos.top,
				left: pos.left
				
			}).show();
		},
		
		"mouseout": function (x) {
			tt.hide();
		}
	};

	// Create a new xChart instance, passing the type
	// of chart a data set and the options object
	
	var chart = new xChart('line-dotted', data, '#chart' , opts);
	
	// Function for loading data via AJAX and showing it on the chart
	function ajaxLoadChart(startDate,endDate) {

		// If no data is passed (the chart was cleared)
		
		if(!startDate || !endDate){
			chart.setData({
				"xScale" : "exponential",
				"yScale" : "linear",
				"main" : [{
					className : ".stats",
					data : []
				}]
			});
			
			return;
		}

		// Otherwise, issue an AJAX request
	$.getJSON('ajax.php?stor=23', {
			
			start:	startDate.format('{yyyy}-{MM}-{dd}')
            
		}, function(data) {
			var set = [];
			$.each(data, function() {

				set.push({
					x : this.label,
					y : parseInt(this.value, 10)
				});
			});
			
		
			
			chart.setData({
				"xScale" : "ordinal",
				"yScale" : "linear",
				"main" : [{
					className : ".stats",
                	data : set
				}]
			});
            
		});
	}
});

</script>









		</div> 
	</div>



<?php include_once("footer.php"); ?>