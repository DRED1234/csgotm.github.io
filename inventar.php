<?php
session_start();
include_once('functions.php');

ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL | E_ERROR | E_PARSE | E_WARNING); 



$use = new user($_SESSION['steamid']);
$_STEAMAPI = "25FA05BE395895E90A2BB75C76B7FCEE";
$steamid = $use->urprof;

//***********************ПОЛУЧАЕМ CLASSid ПРЕДМЕТОВ ***********
$get_content = file_get_contents("http://steamcommunity.com/profiles/" . $steamid . "/inventory/json/730/2&language=ru");


$ppprov = json_decode($get_content, true);
  //var_dump($ppprov);
if($ppprov == null)
{
    $get_content = file_get_contents("http://steamcommunity.com/id/" . $steamid . "/inventory/json/730/2&language=ru");
    
}

$data_image = json_decode($get_content, true);
$classid = array();
$classid_2 = array();
$ind = 0;
$items_id = array();
while ($fruit_name = current($data_image['rgInventory'])) 
{
    $inv = key($data_image['rgInventory']);
    $classid[$ind] = $data_image['rgInventory'][$inv]['classid'];
    $items_id[$ind] = $data_image['rgInventory'][$inv]['id'];
    $ind++;
    next($data_image['rgInventory']);
    
    
}

$classid_inv = $classid;
//*************************************************************





//*************** ПРОВЕРКА ТАБЛИЦЫ ITEM *******************

$result = get_all('items');
while($data = mysql_fetch_row($result))
{
    foreach ($classid as $key => $class)
    {
        if ($data[1] == $class)
        {
            unset($classid[$key]);
            sort($classid);
        }
    }
    
}
//*******************************************************************

//$item_field = array('classid', 'name', 'icon_url', 'type', 'redkost', 'oformlenie', 'kollektion', 'kategory', 'opisanie');



//*******************ПАРСИНГ ТОВАРОВ И ДОБАВЛЕНИЕ В БД****************

for ($i=0; $i<count($classid); $i++)
{
    $item_field = array();
    $item_arr = array();
    
    $get_content = file_get_contents("http://api.steampowered.com/ISteamEconomy/GetAssetClassInfo/v0001?key=80AB198889C8D8215B47FAD6D068A350&format=json&language=ru&appid=730&class_count=2&classid0=0&classid1=" . $classid[$i]);
    $item_describ = json_decode($get_content, true);
    $item_arr[] = $classid[$i];
    $item_field[] = 'classid';
    if(isset($item_describ['result'][$classid[$i]]['actions']["0"]["link"]))
    {
    $item_arr[] = $item_describ['result'][$classid[$i]]['actions']["0"]["link"];
    }
    else
    {
         $item_arr[] = null;
    }
    $item_field[] = 'viewgame';
    
    $item_arr[] = $item_describ['result'][$classid[$i]]['name'];
    $item_field[] = 'name';
    
    $item_arr[] = $item_describ['result'][$classid[$i]]['icon_url'];
    $item_field[] = 'icon_url';
    
 //   echo $item_describ['result'][$classid[$i]]['name'] . '<br>';
    
  //  echo $item_describ['result'][$classid[$i]]['icon_url'] . '<br>';
    
   /* echo '<div class="col-xs-2">
	    <div class="stuff">
			<a href=""><img src="http://steamcommunity-a.akamaihd.net/economy/image/' . $item_describ['result'][$classid[$i]]['icon_url'] .  '"></a>
		</div>
	  </div>'; */
	  
	 //echo  $item_describ['result'][$classid[$i]]['tags'];
	// echo $classid[$i];
	
	 
	 for ($j = 0; $j < count($item_describ['result'][$classid[$i]]['tags']); $j++)
	 {
    	 foreach($item_describ['result'][$classid[$i]]['tags'][$j] as $key => $value)
    	 {
	        if($key == 'category_name' && $value == 'Тип')
	        {
	        //    echo $item_describ['result'][$classid[$i]]['tags'][$j]['name'] . '<br>';
	            
	            $item_arr[] = $item_describ['result'][$classid[$i]]['tags'][$j]['name'];
	            $item_field[] = 'type';
	            
	        }
	        
	        if($key == 'category_name' && $value == 'Редкость')
	        {
	          //  echo $item_describ['result'][$classid[$i]]['tags'][$j]['name'] . '<br>';
	            
	            $item_arr[] = $item_describ['result'][$classid[$i]]['tags'][$j]['name'];
	            $item_field[] = 'redkost';
	        }
	        
	        if($key == 'category_name' && $value == 'Оформление')
	        {
	         //   echo $item_describ['result'][$classid[$i]]['tags'][$j]['name'] . '<br>';
	            
	            $item_arr[] = $item_describ['result'][$classid[$i]]['tags'][$j]['name'];
	            $item_field[] = 'oformlenie';
	        }
	        
	        if($key == 'category_name' && $value == 'Набор')
	        {
	       //     echo $item_describ['result'][$classid[$i]]['tags'][$j]['name'] . '<br>';
	            
	            $item_arr[] = $item_describ['result'][$classid[$i]]['tags'][$j]['name'];
	            $item_field[] = 'kollektion';
	        }
	        if($key == 'category_name' && $value == 'Категория')
	        {
	      //      echo $item_describ['result'][$classid[$i]]['tags'][$j]['name'] . '<br>';
	            
	            $item_arr[] = $item_describ['result'][$classid[$i]]['tags'][$j]['name'];
	            $item_field[] = 'kategory';
	        }
	        
    	 }
    	 
    	 
	 }
	 
    $descr3 = '';
    for ($j = 0; $j < count($item_describ['result'][$classid[$i]]['descriptions']); $j++)
	 {
	     $descr2 = '';
	     foreach($item_describ['result'][$classid[$i]]['descriptions'][$j] as $key => $value)
    	 {
    	     
    	     $descr = '';
    	     
    	     if ($key == 'value' && $value != '')
    	     {
    	         $descr = $descr . '<p';
    	         
    	         if (array_key_exists('color', $item_describ['result'][$classid[$i]]['descriptions'][$j]))
    	         {
    	             $descr = $descr . ' style="color: #' . $item_describ['result'][$classid[$i]]['descriptions'][$j]['color'] . ';"';
    	         }
    	         
    	         $descr =  $descr . '>' . $value . '</p><br>';
    	         
    	     }
    	     
    	     $descr2 = $descr2 . $descr;
    	   
    	 }
    	 
    	      $descr3 = $descr3 . $descr2;
	 }

$item_arr[] = $descr3;
$item_field[] = 'opisanie';


//*******************************************ПОЛУЧАЕМ РЕКОМЕНДУЕМУЮ ЦЕНУ******************************
$hash_name = $item_describ['result'][$classid[$i]]['market_hash_name']; 
$hash_name = urlencode($hash_name);
$get_content = file_get_contents("http://steamcommunity.com/market/priceoverview/?appid=730&currency=5&market_hash_name=" . $hash_name);
$item_price = json_decode($get_content, true);
$item_field[] = 'r_price';
$item_arr[] = $item_price['median_price'];
//************************************************************************************************

insert('items', $item_field, $item_arr);
}
//**********************************************************



//***********ОБНОВЛЯЕМ ИНВЕНТАРЬ****************************

$use->up_date();
$js_dat = $use->dat;



$use->set_mass_id();
$mass_inv = $use->mass_id;

//$classid_inv = array('310776502', '310776502', '310776502');

$m_c = select_stroke($mass_inv, 2);


//*****************************УДАЛЯЕМ ИТЕМЫ*****************************************


rsort($m_c);
rsort($classid_inv);







$donthave = array_diff_assoc($m_c, $classid_inv);

if(count($donthave) > 0)
{
    foreach($donthave as $key => $value)
    {
        mysql_query("DELETE FROM " . $use->name_inv . " WHERE id = " . $mass_inv[$key][0]) or die("ppc");
    }
}

//*****************************************************************************************



//**********************Добавляем новые итемы**********************

if(count($m_c) > 0)
{
$have = array_diff_assoc($classid_inv, $m_c);
   sort($have);
    for ($i = 0; $i < count($have); $i++)
    {
         $data = get_one_wh('items', 'classid', $have[$i]);
         $arr1 = array('id_item'); $arr2 = array($data[0]);
         insert($use->name_inv, $arr1, $arr2);
    }
}
else
    {
        for ($i = 0; $i < count($classid_inv); $i++)
    {
        $data = get_one_wh('items', 'classid', $classid_inv[$i]);
    $arr1 = array('id_item'); $arr2 = array($data[0]);
    insert($use->name_inv, $arr1, $arr2);
    }
    
    }
    
//*****************************************************************
    
    

$js_item = $use->get_inventar();

$js_arr = array('data' => $js_dat, 'cont' => $js_item);
echo json_encode($js_arr);
//************************************************************


//echo "<img src='http://steamcommunity-a.akamaihd.net/economy/image/9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpos7asPwJf2-r3ZzRM6c-JmImMn-O6MbmExj1XuJcl27GVpd_20FXg8xVra2v6dtLGcgA7MF_RqVLvxum7hYj84srcyVEzHA'";
?>

