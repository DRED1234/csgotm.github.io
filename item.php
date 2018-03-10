<?php
include_once('header.php');

if(isset($_GET['status']))
{
if($_GET['status']==1)
{
    echo '<script>alert("Недостаточно средств!");</script>';
}
else if($_GET['status']==2)
{
    echo '<script>alert("Ссылка на обмен не проверена!");</script>';
}
else if($_GET['status']==3)
{
    echo '<script>alert("Необходимо авторизоваться!");</script>';
}
}
?>
	<div class="content">
	    <div class="container">	 
		<div class="item">
		   <?php if (isset($_GET['it_id']))
		   {
		      $result = mysql_query("SELECT *, MIN(prodazi.price) FROM items, prodazi WHERE prodazi.id_item = " . $_GET['it_id'] . " AND items.id = " . $_GET['it_id'] . " AND prodazi.status = 0 AND prodazi.price = (SELECT MIN(price) FROM prodazi WHERE status = 0 AND id_item =  " . $_GET['it_id'] . ")") or die("error");  
		      $data = mysql_fetch_array($result);
		  } 
		  ?>
            <div class="col-sm-4">
			    <div class="item-left-block">
				    <img src="http://steamcommunity-a.akamaihd.net/economy/image/<?php echo $data['icon_url'];  ?>">
					<div class="item-sell-block">
					  <?php if($data['price'] != null) { ?><h3><?php  echo $data['price'] . ' руб.'; ?></h3>
					   <div class="buy-btn"><a href="ajaxlink.php?id=<?php echo $data['id'] . '&id2=' . $data[0]; ?>">Купить</a></div>
                       <?php } else { echo '<h3>К сожалению данного товара нет в наличии!</h3>'; } ?>
					</div>
					<div id=hidden_1 class="edit-link">
                       <div class="edit-link-block">
					      <p>Для покупки необходима <a href="http://steamcommunity.com/profiles/76561198211097556/tradeoffers/privacy" class="rules-link">ссылка на обмен</a></p> 
						  <input value="<?php if(auth()) $use->tradelink; ?>" type="text">
					   </div>
                     </div>
					<div style="margin-top:20px; text-align:center;"><a href="#open1" onclick="show('hidden_1',110,5)" class="rules-link">Изменить ссылку на обмен</a></div>
					<div class="price-notice">
					<p>Уведомить, если цена будет ниже:</p><input class="notif" type="text" value="<?php if(auth()) echo $use->val_note_item($_GET['it_id']); ?>">
					</div>
				</div>
            </div>
            <script>
            
            $('.notif').focusout(function(){
		         
		         var id_it = "<?php echo $_GET['it_id']; ?>";
		         $.ajax({
		             
                                 url: 'ajaxlink.php',
                                 type: "POST",
                                 data: {'notif':$(".notif").val(), 'id_it':id_it},
                       }); 
                });
                
            </script>
            
           
            
			<div class="col-sm-8">
			    <div class="item-review">
                    <h3><?php echo $data['name']; ?></h3>
					<p class="text-bold"><?php  echo $data['type'] . ', ' . $data['kategory'];  if($data['viewgame'] != null) echo ' <a href="'.$data['viewgame'].'" class="rules-link">Осмотреть в игре</a></p>'; ?>
					<div id="slid" style="height: 300px; overflow-y: hidden;"><p class="text-light"><?php  echo $data['opisanie']; ?>
					
					</p>
					
					</div>
					
						<?php if($data['type'] == "Контейнер") echo '<div id="slide2"></div>'; ?>			
					

					
					
					
					<div class="item-stats">
					    <p>Статистика последних покупок<p>
						 <table class="table-v2">
                  <tbody><tr>
                    <th>Покупок</th>
                    <th>MIN цена</th>
                    <th>Средняя цена</th>
                    <th>MAX цена</th>
                  </tr>
    <?php  $result = mysql_query("SELECT MIN(price), AVG(price), MAX(price), COUNT(*) FROM prodazi, pokupki WHERE prodazi.id = pokupki.id_prodazi AND pokupki.status=1 AND prodazi.id_item = ".$_GET['it_id']." LIMIT 500") or die(mysql_error($result)); 
    $data = mysql_fetch_row($result);
    ?>
                  <tr>
                    <td><?php echo $data[3]; ?></td>
                    <td><?php echo $data[0]; ?><small>р.</small></td>
                    <td><?php echo round($data[1], 2); ?><small>р.</small></td>
                    <td><?php echo $data[2]; ?><small>р.</small></td>
                  </tr>
                </tbody></table>
					</div>
				</div>
            </div>
		</div>
		
		
		
		
		
		
		<link href="assets/css/xcharts.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">

	
		
		
	
			<div style="margin-top:30px; margin-left: 2%; width: 96%;" id="placeholder">
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
		"xScale" : "time",
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
		tickHintX: 14, // How many ticks to show horizontally

		dataFormatX : function(x) {
			
			// This turns converts the timestamps coming from
			// ajax.php into a proper JavaScript Date object
			
			return Date.create(x);
		},

		tickFormatX : function(x) {
			
			// Provide formatting for the x-axis tick labels.
			// This uses sugar's format method of the date object. 

			return x.format('{MM}/{dd}');
		},
		
		"mouseover": function (d, i) {
			var pos = $(this).offset();
            
            var mn = month_name(d.x.format('{MM}'));
            
            
			tt.text(d.x.format(mn+' {dd}') + ': ' + d.y).css({
				
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
				"xScale" : "time",
				"yScale" : "linear",
				"main" : [{
					className : ".stats",
					data : []
				}]
			});
			
			return;
		}

		// Otherwise, issue an AJAX request
        var it_id = <?php echo $_GET['it_id']; ?>;

		$.getJSON('ajax.php?it_id='+it_id, {
			
			start:	startDate.format('{yyyy}-{MM}-{dd}'),
			end:	endDate.format('{yyyy}-{MM}-{dd}')
            
		}, function(data) {
			var set = [];
			$.each(data, function() {
				set.push({
					x : this.label,
					y : parseInt(this.value, 10)
				});
			});
			
		
			
			chart.setData({
				"xScale" : "time",
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
		
		
		
		
		
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		 
		<?php include_once('story_sell_only.php'); ?>
		</div> 
	</div>
	
	
<style>

a:focus {
    outline: none;
}
#panel {
    background: #ccc;
    height: 200px;
    display: block;
}
.slide {
    margin: 0;
    padding: 0;
    border-top: solid 4px #422410;
    background: url(images/btn-slide.gif) no-repeat center top;
}
.btn-slide {
    background: url(images/white-arrow.gif) no-repeat right -50px;
    text-align: center;
    width: 144px;
    height: 31px;
    padding: 10px 10px 0 0;
    margin: 0 auto;
    display: block;
    font: bold 120%/100% Arial, Helvetica, sans-serif;
    color: #fff;
    text-decoration: none;
}
.active {
    background-position: right 12px;
}
	
</style>	
	
	
	
	<script language="JavaScript" type="text/javascript">
	$(document).ready(function(){
	    
	    
	    var speed=1000,
    originalHeight=300,
    hoverHeight=950;
    
    
   
    
    
var c = 2;    

$('#slide2').click(function() {
   if (c%2 == 0)
   {
    $('#slid').stop().animate({height:hoverHeight},speed);
   }
   else
   {
       
       $('#slid').stop().animate({height:originalHeight},speed);
   }
   c++;
});
	    
//,function(){
//    $('$slid').stop().animate({height:originalHeight},speed);	    
	    
	    
	    

    $(".btn-slide").click(function(){
        $("#panel").slideToggle("slow");
        $(this).toggleClass("active"); return false;
    });
    
     
});
</script>
	
	
	

<!----------Изменить ссылку на обмен----------->
 <script language="JavaScript" type="text/javascript">
 /*<![CDATA[*/
 var s=[],s_timer=[];
 function show(id,h,spd)
 { s[id]= s[id]==spd? -spd : spd;
 s_timer[id]=setTimeout(function() {
 var obj=document.getElementById(id);
 if(obj.offsetHeight+s[id]>=h){}
 else if(obj.offsetHeight+s[id]<=0){obj.style.height=0;obj.style.display="none";}
 else {obj.style.height=(obj.offsetHeight+s[id])+"px";
 obj.style.overflow="hidden";
 obj.style.display="block";
 setTimeout(arguments.callee, 10);
 }
 }, 10);
 }
 /*]]>*/
 </script>

<?php
include_once('footer.php');
?>