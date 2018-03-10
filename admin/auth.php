<?php session_start();
include_once("../functions.php"); 

if(isset($_POST['email']))
{
    $prov = 0;
    $result = mysql_query("SELECT * FROM admin");
    while($data = mysql_fetch_row($result))
    {
        if($_POST['email'] == $data[1] && $_POST['pass'] == $data[2])
        {
           $prov = 1;
            $_SESSION['admin'] = $_POST['email'];
            header("Location: index.php");
            break;
        }
    }
    if($prov == 0)
    {
     header("Location: login.php");
    }
}

if(isset($_GET['l']))
{
    unset($_SESSION['admin']);
    header("Location: login.php");
}

?>
