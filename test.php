<?php
session_start();
include_once('functions.php');

ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL | E_ERROR | E_PARSE | E_WARNING);


 //$dat = date("Y-m-d H:i:s");
//mysql_query("UPDATE users SET reload_inv = '" . $dat . "' WHERE steamid = '" . $_SESSION['steamid'] . "'") or die('err');

$use = new user($_SESSION['steamid']);
$use->up_date();
//echo date($use->dat);
//$dat = date_create($use->dat);
//echo date_format($dat, 'Y F d в H:i');
echo $use->dat;

?>