<?php
class prodazi
{
    function prodazi()
    {
       $result = mysql_query('SELECT * FROM prodazi');
    }
    
    function prodazi2($iduse)
    {
      $result = mysql_query('SELECT price, icon_url, id_item, name, r_price, id_slot, i_order FROM prodazi, items WHERE prodazi.id_user = ' .$iduse. ' AND prodazi.id_item = items.id AND prodazi.status=0 ORDER BY prodazi.date DESC') or die('error');
      return $result;
    }
}

?>