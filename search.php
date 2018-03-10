<?php
include_once('functions.php');
header('Content-type: text/html; charset=utf-8');

$type = array ('redkost', 'type', 'oformlenie', 'name', 'name');

$arr = (json_decode($_POST["checks"]));

$lim = $arr[8];
unset($arr[8]);

$lim_start = 12*$lim - 12;
$lim_end = 12;

$order = $arr[count($arr) - 1];
unset($arr[count($arr) - 1]);
$min = $arr[count($arr) - 2];
$max = $arr[count($arr) - 1];
unset($arr[count($arr) - 1]);
unset($arr[5]);
$str = '';

$prov=0;
$bet = ' AND prodazi.price BETWEEN ' . $min . ' AND ' . $max;

switch($order)
{
  case null:   $bet = $bet . ' ORDER BY prodazi.date DESC'; break;
  case "Дате":  $bet = $bet . ' ORDER BY prodazi.date DESC'; break;
  case "Названию":  $bet = $bet . ' ORDER BY items.name'; break;
  case "Цене":  $bet = $bet . ' ORDER BY prodazi.price'; break;
  case "Выгоде": if($arr[4] == ''){ $prov=1; } else { $bet = $bet . ' ORDER BY prodazi.price'; } break;
}
$pp = 0;
foreach($arr as $key=>$val)
{
    if($val != 'Все варианты')
    {
        try
        {
             $str = $str . " AND items." . $type[$key] . " LIKE '%" . $val . "%'";
        }
        catch(Exception $e)
        {
            
        }
    }
}

if($prov == 1)
{
    echo 'По вашему запросу ни чего не найдено!';
}
else
{
$lim = " LIMIT ".$lim_start.', '.$lim_end;
$query = "SELECT prodazi.id_item, prodazi.price, prodazi.date, items.name, items.icon_url FROM prodazi, items WHERE prodazi.id_item = items.id AND prodazi.status = 0" . $str . $bet . $lim;
$result = mysql_query($query) or die("error");
$str = '';
while($data = mysql_fetch_row($result))
						{
						 $str = $str . '<div class="col-sm-3">
						    <div class="stuff">
						        <a href="item.php?it_id='.$data[0].'"><img src="http://steamcommunity-a.akamaihd.net/economy/image/' . $data[4] . '">
								<div class="time">' . $data[2] . '</div>
								<div class="price">' . $data[1] . ' руб.</div>
								<div class="title">' . $data[3] . '</div>
	                            </a>
						    </div>
						</div>';
						}
						

echo $str;
}
?>