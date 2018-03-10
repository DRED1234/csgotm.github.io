<?php
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL | E_ERROR | E_PARSE | E_WARNING);

$dbconnect2 = '';
function dbconnect()        //
{     
$server = "";
$username = "BCF.SU";                                 //                      //                     //               //
$password = "";  //                              //                  //                   //
$dbconnect2 = @mysql_connect ($host $user, $pass) or die("Error");
@mysql_select_db("login");                                                   // 
mysql_query("SET NAMES 'utf16'");                //                      //
}                                                           //
                                //
                                       //                //
function auth()
{
    if (isset($_SESSION['steamid']))
    {
        return true;
    }
    else
    {
        return false;
    }
}

function select_stroke($mass, $nom)
{
    $mass2 = array();
    for($i = 0; $i < count($mass); $i++)
    {
        $mass2[] = $mass[$i][$nom];
    }
    return $mass2;
    
}

function order($iditem)
{
   $order = mysql_query("SELECT COUNT(*) FROM prodazi WHERE id_item = " . $iditem);
 //  $data=mysql_fetch_assoc($order);
   return mysql_result($order, 0);
}

function update_order($iditem)
{
    $result = mysql_query("SELECT id FROM prodazi WHERE id_item = " . $iditem . " ORDER BY date");
    while($data = mysql_fetch_row($result))
    {
    $i = 1;
    mysql_query("UPDATE prodazi SET i_order = " . $i . " WHERE id_item = " . $idim . " AND id = " . $data[0]);
    $i++;
    }
}


include 'db_functions.php';
include 'class_user.php';
include 'class_prodazi.php';

?>