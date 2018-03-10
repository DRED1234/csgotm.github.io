<?php
header('Content-Type: application/json');
include_once('functions.php');

if (isset($_GET['start']) AND !isset($_GET['stor'])) {
    
$start = $_GET['start'];
$data = array();
$data3 = array();
	// Select the results with Idiorm
	$i = 0;
for($j=0; $j<7; $j++)
{
    
    $dat = date("d");
    $dat = $dat - $j;  
    //date = CURDATE() AND 
//	$result = mysql_query("SELECT price FROM prodazi WHERE date = ADDDATE(now(), INTERVAL -".$wek." DAY)") or die("error");
	
	$result = mysql_query("SELECT date, SUM(price) FROM prodazi WHERE DAY(date) = '$dat' AND id_item = ".$_GET['it_id']) or die("error");
	while($data2 = mysql_fetch_row($result))
	{
	    
	    $data[$i]['value'] = $data2[1];
        
        
	}	
    if($data[$i]['value'] == null)
    {
       $data[$i]['value'] = 0; 
    }
    
        $date = new DateTime();
        $date->modify('-'.$j.' day');
        $data[$i]['label'] = $date->format('m-d');
        
        $i++;
}


	// Build a new array with the data
/*	foreach ($data as $key => $value) {
		$data[$key]['label'] = $value['date'];
		$data[$key]['value'] = $value['sales_order'];
	} */

	echo json_encode($data);
}

if(isset($_GET['stor']))
{
    $day = date("d");
    $tim = time();
    $i = 0;
    $data = array();
    
    for($j=1; $j<8; $j++)
    {
        $d2 = date("H", $tim);
        $result = mysql_query("SELECT date, COUNT(*) FROM prodazi WHERE HOUR(date) = '$d2' AND DAY(date) = '$day'") or die("error");
        $data2 = mysql_fetch_row($result);
        $data[$i]['value'] = $data2[1];
        $data[$i]['label'] = $d2;
        $tim = $tim - 1 * 60 * 60;
        $i++;     
    }
   	echo json_encode($data);
    
}

