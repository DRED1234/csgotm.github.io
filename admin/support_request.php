<?php
include_once("../functions.php");
if(isset($_GET['id_open']))
{
    header("Location: support.php");
    mysql_query("UPDATE support SET status = '1' WHERE id = ".$_GET['id_open']);
}

if(isset($_POST['id_ask']))
{
    header("Location: reply.php?id_reply=".$_POST['id_ask']);
    $arr1 = array ('id_q', 'txt');
    $arr2 = array ($_POST['id_ask'], $_POST['body']);
    insert('support_ask', $arr1, $arr2);
}

if(isset($_GET['id_close']))
{
    header("Location: support.php");
    mysql_query("UPDATE support SET status = '2' WHERE id = ".$_GET['id_close']);
}

if(isset($_GET['id_user_del']))
{
    header("Location: users.php");
    mysql_query("DELETE FROM users WHERE id = " . $_GET['id_user_del']);
}

if(isset($_GET['id_fin_otk']))
{
    header("Location: fin-in.php");
    mysql_query("UPDATE pay_in SET status = '2' WHERE id = ".$_GET['id_fin_otk']);
}

if(isset($_GET['id_fin_obr']))
{
    header("Location: fin-in.php");
    mysql_query("UPDATE pay_in SET status = '1' WHERE id = ".$_GET['id_fin_obr']);
}

?>