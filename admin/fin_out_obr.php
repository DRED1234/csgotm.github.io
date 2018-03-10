<?php
include_once("../functions.php");
header("Location: fin-out.php");

if(isset($_GET['id_obr']))
{
    mysql_query("UPDATE pay_out SET status = 1 WHERE id = ".$_GET['id_obr']);
}

if(isset($_GET['id_pod']))
{
    mysql_query("UPDATE pay_out SET status = 2 WHERE id = ".$_GET['id_pod']);
}

if(isset($_GET['id_del']))
{
    mysql_query("DELETE FROM pay_out WHERE  id = ".$_GET['id_del']);
}

?>