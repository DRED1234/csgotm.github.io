<?php
session_start();
include_once('functions.php');
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL | E_ERROR | E_PARSE | E_WARNING);


if(isset($_POST['ses']))
{
    $use = new user($_SESSION['steamid']);
    $use->up_mob_prov();
}

/**********ППррооввееррккаассссыыллккии***********/
if(isset($_POST['ssilka_prov']))
{
    if($_POST['ssilka_prov'] == 1)
    {
        $use = new user($_SESSION['steamid']);
        $use->up_ssilka();
    }
    else
    {
        $use = new user($_SESSION['steamid']);
        echo $use->ssilka_status;
    }
    
}
/**************************************/
//*******Сохраняем email****
if(isset($_POST['mail']))
{
    $use = new user($_SESSION['steamid']);
    $use->up_mail($_POST['mail']);
}


//************Обрабатываем покупку*********
if(isset($_GET['id']))
{
    if(isset($_SESSION['steamid']))
    {
    $use = new user($_SESSION['steamid']);
    
    $result = mysql_query("SELECT price FROM prodazi WHERE id = " . $_GET['id']);
    $data = mysql_fetch_row($result);
    
    if($use->balance >= $data[0] && $use->ssilka_status == 2)
    {
    header("Location: sell.php");
    $mass1 = array('id_prodazi', 'id_user');
    $mass2 = array($_GET['id'], $use->id);
    insert('pokupki', $mass1, $mass2);
    $sum = $data[0]*$use->skidka/100;
    $sum = $data[0]-$sum;
    $use->update_balance("-".$sum);
    mysql_query("UPDATE prodazi SET status = '1', timestamp='".time()."' WHERE id = " . $_GET['id']);
    update_order($_GET['id2']);
    }
    else if($use->balance < $data[0])
    {
        header("Location: ".$_SERVER['HTTP_REFERER'].'&status=1');
    }    
    else if($use->ssilka_status != 2)
    {
        header("Location: ".$_SERVER['HTTP_REFERER'].'&status=2');
    }
    }
    else
    {
        header("Location: ".$_SERVER['HTTP_REFERER'].'&status=3');
    }
    
    
}
//*****************************************

//*******УДАЛЯЕМ ПРОДАЖУ**********
if(isset($_GET['del']))
{
    
    header("Location: sell.php");
    $use = new user($_SESSION['steamid']);
    $use->del_sell($_GET['del']);
    
}
//*********************************

//************************Выставляем на продажу**************************
if(isset($_POST['price']))
{
    
    
    $use = new user($_SESSION['steamid']);
    if($use->ssilka_status == 2)
   {
    $secret = secret();
    header("Location: sell.php");
    $id_item = $use->get_inv_itemid($_POST['iditem']);
    $order = order($id_item);
    $order = $order+1;
    $mass1 = array('id_user', 'id_slot', 'id_item', 'date', 'price', 'i_order', 'secret');
    $mass2 = array($use->id, $_POST['iditem'], $id_item, date("Y-m-d H:i:s"), $_POST['price'], $order, $secret);
    insert('prodazi', $mass1, $mass2);
    mysql_query("UPDATE " . $use->name_inv . " SET status = 1 WHERE id = " . $_POST['iditem']) or die("err");
    }
    else
    {
     header("Location: sell.php?st3=1");
    }
    
}

//********************************************


//************Обновляем ссылку******************
if(isset($_POST['link']))
{
    $use = new user($_SESSION['steamid']);
    $use->up_link($_POST['link']);
}
//***********************************



//*******Данный для выставления на продажу*******
if(isset($_POST['rel']))
{
    $data = get_one_wh('items', 'id', $_POST['rel']);
    $js_arr = array('name' => $data[2], 'url' => $data[3], 'price' => $data[10]);
    echo json_encode($js_arr);
}
//******************************


//*******Обновляем оповещением цены предмета*****

if(isset($_POST['notif']))
{
    $use = new user($_SESSION['steamid']);
    $use->val_note_item($_POST['id_it'], $_POST['notif']);
}
if(isset($_GET['pokupka']))
{
    $result = mysql_query($_GET['pokupka']);
    while($data = mysql_fetch_row($result))
    {
        print_r($data);
    }
}
//********************************

//*******Оповещаем о снижении цены предмета*******************
if(isset($_POST['note_prov']))
{
    $use = new user($_SESSION['steamid']);
    
    $result = mysql_query("SELECT * FROM notification WHERE id_user = " . $use->id) or die("error");
    while($data = mysql_fetch_row($result))
    {
        $result2 = mysql_query("SELECT id FROM prodazi WHERE id_item = ".$data[2]. " AND i_order = 1 AND price < ".$data[3]) or die("error");
        $data2 = mysql_fetch_row($result2);
        if($data2[0] != null)
        {
           echo "true";
           mysql_query("DELETE FROM notification WHERE id = " . $data[0]);
        }
    }
    
    $result = mysql_query("SELECT id FROM prodazi WHERE id_user = " . $use->id . " AND status = 1 AND note = 0") or die("error");
    while($data = mysql_fetch_row($result))
    {
        if($data[0] != null)
        {
            echo "true";
            mysql_query("UPDATE prodazi SET note = 1 WHERE id = " . $data[0]);
        }
    }
    

}
//*********************************

function secret($length = 5){
  $chars = 'abdefhiknrstyzABDEFGHKNQRSTYZ23456789';
  $numChars = strlen($chars);
  $string = '';
  for ($i = 0; $i < $length; $i++) {
    $string .= substr($chars, rand(1, $numChars) - 1, 1);
  }
  return $string;
}
?>