<?php
include_once("functions.php");
if(isset($_POST['ik_co_id']))
{
    $dat = $_POST['ik_inv_crt'];
    $use = new user($_POST['ik_desc']);
    $use->update_balance($_POST['ik_am']);
    $arr1 = array('id_user', 'sum', 'date');
    $arr2 = array($use->id, $_POST['ik_am'], $dat);
    insert("pay_in", $arr1, $arr2);
}

?>